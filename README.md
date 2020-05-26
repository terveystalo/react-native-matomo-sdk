# react-native-matomo-sdk

[![Build Status](https://travis-ci.org/terveystalo/react-native-matomo-sdk.svg?branch=master)](https://travis-ci.org/terveystalo/react-native-matomo-sdk)

## Getting started

`$ npm install react-native-matomo-sdk --save`

- Requires React Native version 0.60.0, or later.
- Supports iOS 10.0, or later.

### iOS

Since the official [`matomo-sdk-ios`](https://github.com/matomo-org/matomo-sdk-ios) library is written is Swift, you need to have Swift enabled in your iOS project. If you already have any `.swift` files, you are good to go. Otherwise create a new empty Swift source file in Xcode, and allow it to create the neccessary bridging header when prompted.

## Usage

```javascript
import Matomo from "react-native-matomo-sdk";

Matomo.initialize("https://example.com/piwik.php", 1)
  .catch(error => console.warn("Failed to initialize matomo", error))
  .then(() => Matomo.setUserId("UniqueUserId"))
  .then(() => Matomo.setCustomDimension(1, "1.0.0"))
  .then(() => {
    Matomo.trackEvent("Application", "Startup").catch(error =>
      console.warn("Failed to track event", error)
    );

    Matomo.trackView(["start"]).catch(error =>
      console.warn("Failed to track screen", error)
    );
  }
);
```

### `initialize(trackerUrl: string, siteId: number)`

Initializes the Matomo tracker. This should be called once on application start, after which the other API functions will work. Calling any other functions before the `initialize` call has resolved will likely result in an error.

### `trackEvent(category: srting, action: string, name?: string , value?: number)`

Tracks an [event](https://matomo.org/docs/event-tracking/) using the previously initialized tracker.

### `trackView(path: string[])`

Tracks a screen view using the previously initialized tracker. The path parts will be joined to a path string, with parts separated by `/` characters.

### `setUserId(userId: string | null)`

Sets the [user id](https://matomo.org/docs/user-id/) for the tracker. Passing `null` as the user id will clear any previously set user id.

### `setCustomDimension(id: number, value: string | null)`

Sets a [custom dimension](https://matomo.org/docs/custom-dimensions/) value for the tracker which will be sent as part of all subsequent tracking calls. Passing `null` as the value will clear any previously set value for the given dimension id.


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

### Releasing

```bash
# Switch to master branch
git checkout master
# Set new version
npm version [major | minor | patch]
# Push tag
git push --follow-tags
```
