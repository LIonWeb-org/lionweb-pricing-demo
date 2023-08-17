package com.strumenta.pricing

import java.math.BigDecimal

data class OrderLine(val productID: String, val quantity: Int)
data class Order(val lines: List<OrderLine>) {
    val itemQuantity: Int
        get() = lines.sumOf { it.quantity }
}

data class Discount(val description: String, val amount: PriceValue)

data class Pricing(val startingPrice: PriceValue = PriceValue(), val discounts: MutableList<Discount> = mutableListOf()) {
    fun addComponent(priceComponent: PriceComponent) {
        startingPrice.addComponent(priceComponent)
    }

    val finalPrice: PriceValue
        get() = startingPrice.applyDiscounts(discounts)
}

class PriceComponent(initialValue: BigDecimal, val currency: Currency) {
    val value = initialValue.setScale(2)
    fun multipliedBy(multiplier: Int): PriceComponent = multipliedBy(BigDecimal(multiplier))

    fun multipliedBy(multiplier: BigDecimal): PriceComponent {
        return PriceComponent(value.multiply(multiplier), currency)
    }

    fun sum(other: PriceComponent): PriceComponent {
        require(this.currency == other.currency)
        return PriceComponent(this.value.add(other.value), this.currency)
    }

    fun inverse(): PriceComponent {
        return PriceComponent(value.multiply(BigDecimal("-1.0")), currency)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is PriceComponent) return false

        if (currency != other.currency) return false
        if (value != other.value) return false

        return true
    }

    override fun hashCode(): Int {
        var result = currency.hashCode()
        result = 31 * result + (value.hashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "$value $currency"
    }
}

internal data class PricingContext(val order: Order, val basePrice: PriceValue) {
    val itemQuantity: Int
        get() = order.itemQuantity
}

class PricingInterpreter(val pricingStrategy: PricingStrategy) {

    fun calculatePrice(order: Order): Pricing {
        val pricing = Pricing()
        order.lines.forEach { orderLine ->
            pricing.addComponent(basePriceFor(orderLine.productID).multipliedBy(orderLine.quantity))
        }
        val pricingContext = PricingContext(order, pricing.startingPrice)
        pricingStrategy.discountPolicies.forEach { discountPolicy ->
            if (discountPolicy.condition.evaluate(pricingContext).asBoolean()) {
                val discountAmount = discountPolicy.discount.evaluate(pricingContext).asPrice()
                pricing.discounts.add(Discount(discountPolicy.description, discountAmount))
            }
        }
        return pricing
    }

    private fun basePriceFor(productID: String): PriceComponent {
        val basePrice = pricingStrategy.basePrices.find { it.itemID == productID }
            ?: throw IllegalArgumentException("No price for $productID")
        return PriceComponent(
            BigDecimal("${basePrice.amount.integerPart}.${basePrice.amount.decimalPart}"),
            basePrice.amount.currencey
        )
    }

    private fun Expression.evaluate(pricingContext: PricingContext): Value {
        return when (this) {
            is GreaterThan -> BooleanValue(
                this.left.evaluate(pricingContext).asBigDecimal() > this.right.evaluate(pricingContext).asBigDecimal()
            )
            is LessThan -> BooleanValue(
                this.left.evaluate(pricingContext).asBigDecimal() < this.right.evaluate(pricingContext).asBigDecimal()
            )

            is ItemQuantity -> IntegerValue(pricingContext.itemQuantity)
            is IntLiteral -> IntegerValue(this.value.toInt())
            is Percentage -> pricingContext.basePrice.multipliedBy(
                this.base.evaluate(pricingContext).asBigDecimal().divide(
                    BigDecimal(100)
                )
            )
            else -> TODO("Evaluate $this (${this.javaClass.canonicalName})")
        }
    }
}
