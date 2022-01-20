# Banner Ads

## Setup Steps (Android)

1. Increase the minSdkVersion of android/app/build.gradle to `19`
```
defaultConfig {
    applicationId "com.example.banners"
    minSdkVersion 19
    targetSdkVersion flutter.targetSdkVersion
    versionCode flutterVersionCode.toInteger()
    versionName flutterVersionName
}
```
2. Increase the kotlin version of android/build.gradle
```
buildscript {
   ext.kotlin_version = '1.4.32'
   repositories {
     google()
     mavenCentral()
   }

   ...
}
   ```
3. Add a meta-data to the application section of the Android Manifest. Below is a test app id you can use
```
<meta-data
       android:name="com.google.android.gms.ads.APPLICATION_ID"
       android:value="ca-app-pub-3940256099942544~3347511713"/>
```

4. Run the app with your device, and find the device id in the console. Change kTestDeviceId 
```
// The id of your own device should log to the console
const kTestDeviceId = "1630739AA7A907A2D01D5D2C47268D3F";
```

