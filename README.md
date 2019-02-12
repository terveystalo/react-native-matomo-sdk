
# react-native-matomo-sdk

## Getting started

`$ npm install react-native-matomo-sdk --save`

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
  