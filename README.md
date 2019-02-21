
# react-native-matomo-sdk

[![Build Status](https://travis-ci.org/terveystalo/react-native-matomo-sdk.svg?branch=master)](https://travis-ci.org/terveystalo/react-native-matomo-sdk)

## Getting started

`$ npm install react-native-matomo-sdk --save`

### Android

Since the official [`matomo-sdk-android`](https://github.com/matomo-org/matomo-sdk-android) library uses Java 1.8 features, you will need to add the following lines in your `android/app/build.gradle` file under the `android` section:

```
compileOptions {
  sourceCompatibility JavaVersion.VERSION_1_8
  targetCompatibility JavaVersion.VERSION_1_8
}
```

### iOS

Since the official [`matomo-sdk-ios`](https://github.com/matomo-org/matomo-sdk-ios) library is written is Swift, you need to have Swift enabled in your iOS project. If you already have any `.swift` files, you are good to go. Otherwise create a new empty Swift source file in Xcode, and allow it to create the neccessary bridging header when prompted.

### Mostly automatic installation

`$ react-native link react-native-matomo-sdk`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-matomo-sdk` and add `RNMatomoSdk.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNMatomoSdk.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.terveystalo.react_native.matomo_sdk.RNMatomoSdkPackage;` to the imports at the top of the file
  - Add `new RNMatomoSdkPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-matomo-sdk'
  	project(':react-native-matomo-sdk').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-matomo-sdk/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-matomo-sdk')
  	```


## Usage
```javascript
import RNMatomoSdk from 'react-native-matomo-sdk';

// TODO: What to do with the module?
RNMatomoSdk;
```
  

## Developing

The simplest way to develop the library is through the examples app. First install the 

```bash
cd example/
npm ci
```

### Android

Open the example project in Android Studio, and edit the `react-native-matomo-sdk` Java Module from the sidebar. This will ensure that the SDK build environment matches that of a proper React Native application.

### iOS

For iOS you need to install the Pod dependencies, and open the XCode workspace to edit with proper compiler support. The Matomo SDK can be found in the project view under `example` > `Libararies` > `RNMatomoSDK.xcodeproj`.

```bash
cd example/

# Install pod dependencies
pod install --project-directory=ios/

# Open project in xcode
open ios/example.xcworkspace/
```
