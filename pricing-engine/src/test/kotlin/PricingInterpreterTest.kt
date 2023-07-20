import com.strumenta.kolasu.model.ReferenceByName
import com.strumenta.pricing.Amount
import com.strumenta.pricing.BasePrice
import com.strumenta.pricing.Currency
import com.strumenta.pricing.Order
import com.strumenta.pricing.OrderLine
import com.strumenta.pricing.Price
import com.strumenta.pricing.PriceComponent
import com.strumenta.pricing.PricingInterpreter
import com.strumenta.pricing.PricingStrategy
import io.lionweb.lioncore.java.serialization.JsonSerialization
import java.math.BigDecimal
import kotlin.test.Test
import kotlin.test.assertEquals

class PricingInterpreterTest {

    @Test
    fun calculatePriceForMPSExportedPricing() {
        val pricingFile = this.javaClass.classLoader.getResourceAsStream("strategies.json")
        require(pricingFile != null)
        val jsonser = JsonSerialization.getStandardSerialization()
        val nodes = jsonser.unserializeToNodes(pricingFile)
    }

    @Test
    fun calculatePriceForPricingWithNoDiscounts() {
        val pricing = PricingStrategy(name = "Standard Prices",
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
        assertEquals(Price(basePrice = mutableListOf(PriceComponent(BigDecimal("70.0"), Currency.EUR))),
            PricingInterpreter(pricing).calculatePrice(order))
    }
}
