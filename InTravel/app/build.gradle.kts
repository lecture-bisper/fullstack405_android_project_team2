plugins {
  alias(libs.plugins.android.application)
  alias(libs.plugins.jetbrains.kotlin.android)
  alias(libs.plugins.google.android.libraries.mapsplatform.secrets.gradle.plugin)
}

android {
  namespace = "com.example.intravel"
  compileSdk = 34

  defaultConfig {
    applicationId = "com.example.intravel"
    minSdk = 34
    targetSdk = 34
    versionCode = 1
    versionName = "1.0"

    testInstrumentationRunner = "androidx.test.runner.AndroidJUnitRunner"
  }

  buildTypes {
    release {
      isMinifyEnabled = false
      proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
    }
  }
  compileOptions {
    sourceCompatibility = JavaVersion.VERSION_1_8
    targetCompatibility = JavaVersion.VERSION_1_8
  }
  kotlinOptions {
    jvmTarget = "1.8"
  }
  buildFeatures {
    viewBinding = true
  }
}

dependencies {

  implementation(libs.androidx.core.ktx)
  implementation(libs.androidx.appcompat)
  implementation(libs.material)
  implementation(libs.androidx.activity)
  implementation(libs.androidx.constraintlayout)
  implementation(libs.androidx.runtime.saved.instance.state)
  testImplementation(libs.junit)
  androidTestImplementation(libs.androidx.junit)
  androidTestImplementation(libs.androidx.espresso.core)

  implementation("com.squareup.retrofit2:retrofit:2.9.0")
  implementation("com.squareup.retrofit2:converter-gson:2.9.0")
  implementation ("com.google.android.material:material:1.9.0")
  implementation ("androidx.viewpager2:viewpager2:1.0.0'")
  implementation ("androidx.fragment:fragment:1.5.0")


  // Google Map
  implementation ("com.google.android.gms:play-services-maps:17.0.0")
  implementation ("com.google.android.gms:play-services-location:17.0.0")

  // Places API
  implementation ("com.google.android.libraries.places:places:2.5.0")

  implementation ("com.squareup.okhttp3:okhttp:4.10.0")
  implementation ("com.squareup.okhttp3:logging-interceptor:4.10.0")

  implementation ("com.github.bumptech.glide:glide:4.15.1")
  annotationProcessor ("com.github.bumptech.glide:compiler:4.15.1")
}