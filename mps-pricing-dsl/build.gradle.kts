plugins {
    id("com.specificlanguages.mps") version "1.6.0"
}

repositories {
    mavenLocal()
    mavenCentral()
    maven(url = "https://projects.itemis.de/nexus/content/repositories/mbeddr")    
}

dependencies {
    "mps"("com.jetbrains:mps:2021.1.4")
    "generation"("de.itemis.mps:extensions:2021.1.+")
}