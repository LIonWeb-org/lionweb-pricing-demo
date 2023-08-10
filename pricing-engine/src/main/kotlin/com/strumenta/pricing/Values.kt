package com.strumenta.pricing

import java.math.BigDecimal

sealed class Value {
    open fun asBoolean(): Boolean {
        throw UnsupportedOperationException("$this cannot be converted to Boolean")
    }

    open fun asPrice(): PriceValue {
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

data class PercentageValue(val value: BigDecimal) : Value()

data class PriceValue(val components: MutableList<PriceComponent> = mutableListOf()) : Value() {

    fun add(other: PriceValue) {
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

    fun applyDiscounts(discounts: MutableList<Discount>): PriceValue {
        val discountedPrice = this.copy()
        discounts.forEach {
            discountedPrice.add(it.amount.inverse())
        }
        return discountedPrice
    }

    private fun inverse(): PriceValue {
        return PriceValue(components.map { it.inverse() }.toMutableList())
    }

    fun multipliedBy(factor: BigDecimal): PriceValue {
        return PriceValue(components.map { it.multipliedBy(factor) }.toMutableList())
    }

    override fun asPrice(): PriceValue = this
}