rootProject.name = "lionweb-pricing-demo"
include("mps-pricing-dsl")
include("pricing-engine")

pluginManagement {
    val kolasuVersion: String by settings

    repositories {
        mavenLocal()
        gradlePluginPortal()
        mavenCentral()
    }

    plugins {
        id("com.strumenta.kolasu.lionwebgen") version kolasuVersion
    }
}