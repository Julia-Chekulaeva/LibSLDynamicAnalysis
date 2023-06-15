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
    implementation("com.github.vldF:libsl:v1.1.0-RC")
    testImplementation(kotlin("test"))
}

dependencies {
    implementation("org.jboss.forge.roaster:roaster-jdt:2.28.0.Final")
    implementation("org.ejml:ejml-all:0.42")
    implementation("org.openjfx:javafx-base:19.0.2.1")
}

tasks.test {
    useJUnitPlatform()
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "11"
}

application {
    mainClass.set("MainKt")
}