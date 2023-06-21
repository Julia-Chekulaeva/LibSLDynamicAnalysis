import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.6.10"
    application
}

group = "me.cat_p"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
    maven("https://jitpack.io")
}

dependencies {
    implementation("org.kohsuke:github-api:1.314")
    implementation("com.github.vldf:libsl:4a5d678")
    implementation("org.javassist:javassist:3.29.2-GA")
    testImplementation(kotlin("test"))
}

dependencies {
    implementation("org.ejml:ejml-all:0.42")
}

tasks.test {
    useJUnitPlatform()
}

tasks.test {
    jvmArgs = mutableListOf(
        //"-javaagent:InstrumentAgent1/build/libs/InstrumentAgent1-1.0-SNAPSHOT.jar",
        //"-javaagent:InstrumentAgent2/build/libs/InstrumentAgent2-1.0-SNAPSHOT.jar"
    )
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "11"
}

application {
    mainClass.set("MainKt")
}
