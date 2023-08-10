import com.strumenta.pricing.PricingLoader
import java.io.File
import kotlin.test.Test

class PricingLoaderTest {

    @Test
    fun loadPricingStrategies() {
        val pricingStrategy = PricingLoader().loadPricingStrategyFromLionWebFile(File("src/test/resources/strategies.json"))

        // For now we are happy this does not explode!
    }
}
