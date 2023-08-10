plugins {
    id("org.jetbrains.kotlin.jvm") version "1.9.0"
    id("com.google.devtools.ksp") version "1.9.0-1.0.13"
    id("org.jlleitschuh.gradle.ktlint") version "11.5.0"
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
val lionwebJavaVersion = extra["lionwebJavaVersion"]

dependencies {
    implementation("com.github.ajalt.clikt:clikt:4.2.0")
    testImplementation("com.strumenta.kolasu:kolasu-lionweb-gen:$kolasuVersion")
    testImplementation("io.lionweb.lioncore-java:lioncore-java-core:$lionwebJavaVersion")
    testImplementation(kotlin("test"))
}
