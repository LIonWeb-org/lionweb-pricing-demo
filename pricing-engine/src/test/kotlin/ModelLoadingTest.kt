import com.strumenta.kolasu.language.KolasuLanguage
import com.strumenta.kolasu.lionweb.LionWebModelConverter
import com.strumenta.kolasu.lionweb.StarLasuLWLanguage
import com.strumenta.pricing.Amount
import com.strumenta.pricing.Currency
import com.strumenta.pricing.PricingStrategy
import io.lionweb.lioncore.java.language.Language
import io.lionweb.lioncore.java.serialization.JsonSerialization
import java.io.File
import java.io.FileInputStream
import kotlin.test.Test

class ModelLoadingTest {

    @Test
    fun loadPricingStrategies() {
        val languageFile = File("src/main/lionweb/pricing.json")
        require(languageFile.exists())
        val jsonser = JsonSerialization.getStandardSerialization()
        jsonser.nodeResolver.addTree(StarLasuLWLanguage)
        val language = jsonser.unserializeToNodes(FileInputStream(languageFile)).first() as Language
        jsonser.conceptResolver.registerLanguage(language)

        val modelFile = File("src/test/resources/strategies.json")
        require(modelFile.exists())
        jsonser.enableDynamicNodes()
        val model = jsonser.unserializeToNodes(FileInputStream(modelFile))
        println(model)

        val lwImpExp = LionWebModelConverter()
        val kolasuLanguage = KolasuLanguage("pricing").apply {
            addClass(Amount::class)
            addEnumClass(Currency::class)
            addClass(PricingStrategy::class)
        }

        lwImpExp.importLanguages(language, kolasuLanguage)
        lwImpExp.import(model.first())
    }
}
