# Pricing Engine

This Kotlin application receives the language definition in `src/main/lionweb`.
By using [KSP](https://kotlinlang.org/docs/ksp-overview.html) we automatically generate Kotlin classes for the language
in `build/lionweb-gen`.

The generation is triggered automatically when needed (for example, on running tests). In case you do not see the files
you can also run `./gradlew :pricing-engine:compileKotlin` from the root project (a folder up with respect to this file).

The project then defines a very simple interpreter (called `PricingInterpreter`). Given an order and a pricing strategy,
it calculates the price listing the components that lead to that particular price.

At this time both the languages and the models are exported manually from MPS (by a user triggering some intentions)
and then copied in this project under `src/main/lionweb/pricing.json` (languages) and `src/test/resources/strategies.json` (models).