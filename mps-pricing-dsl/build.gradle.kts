plugins {
    id("com.specificlanguages.mps") version "1.6.0"
}

repositories {
    mavenLocal()
    mavenCentral()
    maven(url="https://s01.oss.sonatype.org/content/repositories/snapshots/")
    maven(url="https://artifacts.itemis.cloud/repository/maven-mps")
}

val lionwebMPSVersion = extra["lionwebMPSVersion"]

dependencies {
    mps("com.jetbrains:mps:2021.1.4")
    generation("de.itemis.mps:extensions:2021.1.+")
    generation("io.lionweb.lionweb-mps:lionweb-mps-2021.1:$lionwebMPSVersion")
}