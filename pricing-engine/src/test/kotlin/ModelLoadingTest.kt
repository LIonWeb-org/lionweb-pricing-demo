import com.strumenta.pricing.PricingLoader
import java.io.File
import kotlin.test.Test

class ModelLoadingTest {

    @Test
    fun loadPricingStrategies() {
        val pricingStragegy = PricingLoader().loadPricingStrategyFromLionWebFile(File("src/test/resources/strategies.json"))
        // For now we are happy this does not explode!
    }
}
