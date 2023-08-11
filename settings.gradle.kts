rootProject.name = "lionweb-pricing-demo"
include("mps-pricing-dsl")
include("pricing-engine")

pluginManagement {
    val kolasuVersion: String by settings

    repositories {
        mavenLocal()
        gradlePluginPortal()
        mavenCentral()
        // Necessary to use snapshots of Kolasu
        maven(url="https://oss.sonatype.org/content/repositories/snapshots/")
    }

    plugins {
        id("com.strumenta.kolasu.lionwebgen") version kolasuVersion
    }
}