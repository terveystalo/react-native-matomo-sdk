
package com.terveystalo.react_native.matomo_sdk;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;

public class RNMatomoSdkModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNMatomoSdkModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNMatomoSdk";
  }
}