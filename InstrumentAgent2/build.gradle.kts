import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.6.10"
}

group = "me.cat_p"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
    maven("https://jitpack.io")
}

dependencies {
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.9.2")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine:5.9.2")
    implementation("com.github.vldf:libsl:4a5d678")
    implementation("org.javassist:javassist:3.29.2-GA")
}

tasks.jar {
    manifest {
        attributes["Main-Class"] = "libsl.instrumentation.dynamic1.MainKt"
        attributes["Premain-Class"] = "libsl.instrumentation.dynamic1.PreMainKt"
    }
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "1.8"
}

tasks.test {
    useJUnitPlatform()
}