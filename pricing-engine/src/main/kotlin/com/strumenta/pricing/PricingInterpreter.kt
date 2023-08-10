package com.strumenta.pricing

import java.math.BigDecimal

data class OrderLine(val productID: String, val quantity: Int)
data class Order(val lines: List<OrderLine>) {
    val itemQuantity : Int
        get() = lines.sumOf { it.quantity }
}

data class Discount(val description: String, val amount: Price)

data class Price(val components: MutableList<PriceComponent> = mutableListOf()) {
    fun add(other: Price) {
        other.components.forEach { otherComponent -> addComponent(otherComponent) }
    }
    fun addComponent(priceComponent: PriceComponent) {
        val existing = components.find { it.currency == priceComponent.currency }
        if (existing == null) {
            components.add(priceComponent)
        } else {
            components.remove(existing)
            components.add(existing.sum(priceComponent))
        }
    }
    fun applyDiscounts(discounts: MutableList<Discount>): Price {
        val discountedPrice = this.copy()
        discounts.forEach {
            discountedPrice.add(it.amount.inverse())
        }
        return discountedPrice
    }

    private fun inverse(): Price {
        return Price(components.map { it.inverse() }.toMutableList())
    }
}

data class Pricing(val startingPrice: Price = Price(), val discounts: MutableList<Discount> = mutableListOf()) {
    fun addComponent(priceComponent: PriceComponent) {
        startingPrice.addComponent(priceComponent)
    }

    val finalPrice: Price
        get() = startingPrice.applyDiscounts(discounts)
}

data class PriceComponent(val value: BigDecimal, val currency: Currency) {
    fun multipliedBy(multiplier: Int): PriceComponent {
        return PriceComponent(value.multiply(BigDecimal(multiplier)), currency)
    }

    fun sum(other: PriceComponent): PriceComponent {
        require(this.currency == other.currency)
        return PriceComponent(this.value.add(other.value), this.currency)
    }

    fun inverse(): PriceComponent {
        return PriceComponent(value.multiply(BigDecimal("-1.0")), currency)
    }
}

class PricingInterpreter(val pricingStrategy: PricingStrategy) {

    private fun basePriceFor(productID: String): PriceComponent {
        val basePrice = pricingStrategy.basePrices.find { it.itemID == productID } ?: throw IllegalArgumentException("No price for $productID")
        return PriceComponent(BigDecimal("${basePrice.amount.integerPart}.${basePrice.amount.decimalPart}"), basePrice.amount.currencey)
    }

    fun calculatePrice(order: Order): Pricing {
        val price = Pricing()
        order.lines.forEach { orderLine ->
            price.addComponent(basePriceFor(orderLine.productID).multipliedBy(orderLine.quantity))
        }
        pricingStrategy.discountPolicies.forEach { discountPolicy ->
            if (discountPolicy.condition.evaluate(order).asBoolean()) {
                val discountAmount = discountPolicy.discount.evaluate(order).asPrice()
                price.discounts.add(Discount(discountPolicy.description, discountAmount))
            }
        }
        return price
    }
}

sealed class Value {
    open fun asBoolean(): Boolean {
        throw UnsupportedOperationException("$this cannot be converted to Boolean")
    }

    open fun asPrice(): Price {
        throw UnsupportedOperationException("$this cannot be converted to Price")
    }

    open fun asBigDecimal(): BigDecimal {
        throw UnsupportedOperationException("$this cannot be converted to BigDecimal")
    }
}

data class BooleanValue(val value: Boolean) : Value() {
    override fun asBoolean(): Boolean = value
}

data class IntegerValue(val value: Int) : Value() {
    override fun asBigDecimal(): BigDecimal = BigDecimal(value)
}

private fun Expression.evaluate(order: Order): Value {
    return when (this) {
        is GreaterThan -> BooleanValue(this.left.evaluate(order).asBigDecimal() > this.right.evaluate(order).asBigDecimal())
        is ItemQuantity -> IntegerValue(order.itemQuantity)
        is IntLiteral -> IntegerValue(this.value.toInt())
        else -> TODO("Evaluate $this (${this.javaClass.canonicalName})")
    }
}


