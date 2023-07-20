plugins {
    id("org.jetbrains.kotlin.jvm") version "1.8.22"
    id("com.google.devtools.ksp") version "1.8.22-1.0.11"
    id("com.strumenta.kolasu.lionwebgen")
}

repositories {
    mavenLocal()
    mavenCentral()
    gradlePluginPortal()
}

lionweb {
    importPackageNames.set(mutableMapOf("Pricing" to "com.strumenta.pricing"))
}

val kolasuVersion = extra["kolasuVersion"]
val lionwebVersion = extra["lionwebVersion"]

dependencies {
    testImplementation("com.strumenta.kolasu:kolasu-lionweb-gen:$kolasuVersion")
    testImplementation("io.lionweb.lioncore-java:lioncore-java-core:$lionwebVersion")
    testImplementation(kotlin("test"))
}
