package com.strumenta.pricing

import java.math.BigDecimal

data class OrderLine(val productID: String, val quantity: Int)
data class Order(val lines: List<OrderLine>)

data class Discount(val description: String, val amount: PriceComponent)

data class Price(val components: MutableList<PriceComponent> = mutableListOf()) {
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
            discountedPrice.addComponent(it.amount.inverse())
        }
        return discountedPrice
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
        return price
    }
}

