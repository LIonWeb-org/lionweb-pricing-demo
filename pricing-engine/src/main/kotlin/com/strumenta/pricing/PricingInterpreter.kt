package com.strumenta.pricing

import java.math.BigDecimal

data class OrderLine(val productID: String, val quantity: Int)
data class Order(val lines: List<OrderLine>)

data class Discount(val description: String, val amount: PriceComponent)
data class Price(val basePrice: MutableList<PriceComponent> = mutableListOf(), val discounts: MutableList<Discount> = mutableListOf()) {
    fun addBasePrice(priceComponent: PriceComponent) {
        val existing = basePrice.find { it.currency == priceComponent.currency }
        if (existing == null) {
            basePrice.add(priceComponent)
        } else {
            basePrice.remove(existing)
            basePrice.add(existing.sum(priceComponent))
        }
    }
}
data class PriceComponent(val value: BigDecimal, val currency: Currency) {
    fun multipliedBy(multiplier: Int): PriceComponent {
        return PriceComponent(value.multiply(BigDecimal(multiplier)), currency)
    }

    fun sum(other: PriceComponent) : PriceComponent {
        require(this.currency == other.currency)
        return PriceComponent(this.value.add(other.value), this.currency)
    }
}


class PricingInterpreter(val pricingStrategy: PricingStrategy) {

    private fun basePriceFor(productID: String) : PriceComponent {
        val basePrice = pricingStrategy.basePrices.find { it.itemID == productID } ?: throw IllegalArgumentException("No price for $productID")
        return PriceComponent(BigDecimal("${basePrice.amount.integerPart}.${basePrice.amount.decimalPart}"), basePrice.amount.currencey)
    }

    fun calculatePrice(order: Order) : Price {
        val price = Price()
        order.lines.forEach { orderLine ->
            price.addBasePrice(basePriceFor(orderLine.productID).multipliedBy(orderLine.quantity))
        }
        return price
    }
}

fun main(args: Array<String>) {
    println(Currency.EUR)
}