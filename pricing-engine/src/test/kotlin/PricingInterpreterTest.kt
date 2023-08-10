import com.strumenta.kolasu.model.ReferenceByName
import com.strumenta.pricing.Amount
import com.strumenta.pricing.BasePrice
import com.strumenta.pricing.Currency
import com.strumenta.pricing.Discount
import com.strumenta.pricing.DiscountPolicy
import com.strumenta.pricing.GreaterThan
import com.strumenta.pricing.IntLiteral
import com.strumenta.pricing.ItemQuantity
import com.strumenta.pricing.Order
import com.strumenta.pricing.OrderLine
import com.strumenta.pricing.Percentage
import com.strumenta.pricing.Price
import com.strumenta.pricing.PriceComponent
import com.strumenta.pricing.Pricing
import com.strumenta.pricing.PricingInterpreter
import com.strumenta.pricing.PricingStrategy
import io.lionweb.lioncore.java.serialization.JsonSerialization
import java.math.BigDecimal
import kotlin.test.Test
import kotlin.test.assertEquals

class PricingInterpreterTest {

    @Test
    fun calculatePriceForPricingWithNoDiscounts() {
        val pricing = PricingStrategy(
            name = "Standard Prices",
            sameBasePricesAs = ReferenceByName("", null),
            basePrices = mutableListOf(
                BasePrice("xyz", Amount(Currency.EUR, 10, 0))
            ),
            discountPolicies = mutableListOf()
        )
        val order = Order(
            lines = listOf(
                OrderLine("xyz", 7)
            )
        )
        assertEquals(
            Pricing(startingPrice = Price(mutableListOf(PriceComponent(BigDecimal("70.0"), Currency.EUR)))),
            PricingInterpreter(pricing).calculatePrice(order)
        )
    }

    @Test
    fun calculatePriceForPricingWithDiscounts() {
        val pricingStrategy = PricingStrategy(
            name = "Standard Prices",
            sameBasePricesAs = ReferenceByName("", null),
            basePrices = mutableListOf(
                BasePrice("xyz", Amount(Currency.EUR, 10, 0))
            ),
            discountPolicies = mutableListOf(
                DiscountPolicy("discount foo", GreaterThan(ItemQuantity(), IntLiteral("6")), Percentage(IntLiteral("10")) )
            )
        )
        val order = Order(
            lines = listOf(
                OrderLine("xyz", 7)
            )
        )
        val interpreter = PricingInterpreter(pricingStrategy)
        assertEquals(
            Price(mutableListOf(PriceComponent(BigDecimal("70.0"), Currency.EUR))),
            interpreter.calculatePrice(order).startingPrice
        )
        assertEquals(
            listOf(Discount("discount foo", Price(mutableListOf(PriceComponent(BigDecimal("7.0"), Currency.EUR))))),
            interpreter.calculatePrice(order).discounts
        )
        assertEquals(
            Price(mutableListOf(PriceComponent(BigDecimal("63.0"), Currency.EUR))),
            interpreter.calculatePrice(order).finalPrice
        )
    }
}
