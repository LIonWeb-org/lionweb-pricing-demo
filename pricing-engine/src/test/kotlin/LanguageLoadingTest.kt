import com.strumenta.kolasu.lionweb.StarLasuLWLanguage
import io.lionweb.lioncore.java.language.Language
import io.lionweb.lioncore.java.serialization.JsonSerialization
import java.io.File
import java.io.FileInputStream
import kotlin.test.Test

class LanguageLoadingTest {

    @Test
    fun loadPricing() {
        val languageFile = File("src/main/lionweb/pricing.json")
        require(languageFile.exists())
        val jsonser = JsonSerialization.getStandardSerialization()
        jsonser.nodeResolver.addTree(StarLasuLWLanguage)
        val language = jsonser.unserializeToNodes(FileInputStream(languageFile)).first() as Language
    }
}