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
import com.strumenta.pricing.PriceComponent
import com.strumenta.pricing.PriceValue
import com.strumenta.pricing.Pricing
import com.strumenta.pricing.PricingInterpreter
import com.strumenta.pricing.PricingStrategy
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
            Pricing(startingPrice = PriceValue(mutableListOf(PriceComponent(BigDecimal("70.0"), Currency.EUR)))),
            PricingInterpreter(pricing).calculatePrice(order)
        )
    }

    @Test
    fun calculatePriceForPricingWithDiscountsApplied() {
        val pricingStrategy = PricingStrategy(
            name = "Standard Prices",
            sameBasePricesAs = ReferenceByName("", null),
            basePrices = mutableListOf(
                BasePrice("xyz", Amount(Currency.EUR, 10, 0))
            ),
            discountPolicies = mutableListOf(
                DiscountPolicy("discount foo", GreaterThan(ItemQuantity(), IntLiteral("6")), Percentage(IntLiteral("10")))
            )
        )
        val order = Order(
            lines = listOf(
                OrderLine("xyz", 7)
            )
        )
        val interpreter = PricingInterpreter(pricingStrategy)
        assertEquals(
            PriceValue(mutableListOf(PriceComponent(BigDecimal("70.00"), Currency.EUR))),
            interpreter.calculatePrice(order).startingPrice
        )
        assertEquals(
            listOf(Discount("discount foo", PriceValue(mutableListOf(PriceComponent(BigDecimal("7.00"), Currency.EUR))))),
            interpreter.calculatePrice(order).discounts
        )
        assertEquals(
            PriceValue(mutableListOf(PriceComponent(BigDecimal("63.00"), Currency.EUR))),
            interpreter.calculatePrice(order).finalPrice
        )
    }

    @Test
    fun calculatePriceForPricingWithDiscountsNotApplied() {
        val pricingStrategy = PricingStrategy(
            name = "Standard Prices",
            sameBasePricesAs = ReferenceByName("", null),
            basePrices = mutableListOf(
                BasePrice("xyz", Amount(Currency.EUR, 10, 0))
            ),
            discountPolicies = mutableListOf(
                DiscountPolicy("discount foo", GreaterThan(ItemQuantity(), IntLiteral("6")), Percentage(IntLiteral("10")))
            )
        )
        val order = Order(
            lines = listOf(
                OrderLine("xyz", 6)
            )
        )
        val interpreter = PricingInterpreter(pricingStrategy)
        assertEquals(
            PriceValue(mutableListOf(PriceComponent(BigDecimal("60.00"), Currency.EUR))),
            interpreter.calculatePrice(order).startingPrice
        )
        assertEquals(
            emptyList(),
            interpreter.calculatePrice(order).discounts
        )
        assertEquals(
            PriceValue(mutableListOf(PriceComponent(BigDecimal("60.00"), Currency.EUR))),
            interpreter.calculatePrice(order).finalPrice
        )
    }
}
