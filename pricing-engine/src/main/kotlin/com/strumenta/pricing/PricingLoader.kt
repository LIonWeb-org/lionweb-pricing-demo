package com.strumenta.pricing

import com.strumenta.kolasu.language.KolasuLanguage
import com.strumenta.kolasu.lionweb.LionWebModelConverter
import com.strumenta.kolasu.lionweb.StarLasuLWLanguage
import io.lionweb.lioncore.java.language.Language
import io.lionweb.lioncore.java.serialization.JsonSerialization
import java.io.File
import java.io.FileInputStream

class PricingLoader {
    private var language: Language
    private var jsonser: JsonSerialization

    init {
        val languageFile = File("pricing-engine/src/main/lionweb/pricing.json")
        require(languageFile.exists())
        jsonser = JsonSerialization.getStandardSerialization()
        jsonser.nodeResolver.addTree(StarLasuLWLanguage)
        language = jsonser.unserializeToNodes(FileInputStream(languageFile)).first() as Language
        jsonser.conceptResolver.registerLanguage(language)
    }

    fun loadPricingStrategyFromLionWebFile(lionwebFile: File): PricingStrategy {
        require(lionwebFile.exists())
        jsonser.enableDynamicNodes()
        val model = jsonser.unserializeToNodes(FileInputStream(lionwebFile))
        println(model)

        val lwImpExp = LionWebModelConverter()
        val kolasuLanguage = KolasuLanguage("pricing").apply {
            addClass(Amount::class)
            addEnumClass(Currency::class)
            addClass(PricingStrategy::class)
            addClass(IntLiteral::class)
        }

        lwImpExp.associateLanguages(language, kolasuLanguage)
        lwImpExp.importModelFromLionWeb(model.first())
        return model.first() as PricingStrategy
    }
}