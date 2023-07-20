import com.strumenta.kolasu.lionweb.StarLasuLWLanguage
import io.lionweb.lioncore.java.language.Language
import io.lionweb.lioncore.java.serialization.JsonSerialization
import java.io.File
import java.io.FileInputStream
import kotlin.test.Test

class PricingInterpreterTest {

    @Test
    fun calculatePriceSimpleCase() {
        val pricingFile = this.javaClass.classLoader.getResourceAsStream("strategies.json")
        require(pricingFile != null)
        val jsonser = JsonSerialization.getStandardSerialization()
        val nodes = jsonser.unserializeToNodes(pricingFile)
    }
}