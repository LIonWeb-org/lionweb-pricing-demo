package com.strumenta.pricing

data class OrderLine(val productID: String, val quantity: Int)
data class Order(val lines: List<OrderLine>)

data class Discount(val description: String, val amount: Int)
data class Price(val basePrice: Int, val currency: Currency, val discounts: List<Discount>)

class PricingInterpreter(val pricingStrategy: PricingStrategy) {

    fun calculatePrice(order: Order) : Price {
        TODO()
    }
}