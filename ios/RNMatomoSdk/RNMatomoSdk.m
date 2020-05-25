// Export Swift code to ReactNative Objective-C land
// As documented in https://facebook.github.io/react-native/docs/native-modules-ios#exporting-swift
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(RNMatomoSdk, NSObject)

RCT_EXTERN_METHOD(initialize:(nonnull NSString *)apiUrl
                  siteId:(nonnull NSNumber *)siteId
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter
                  )
RCT_EXTERN_METHOD(trackView:(nonnull NSArray *)route
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter
                  )
RCT_EXTERN_METHOD(trackEvent:(nonnull NSString *) category
                  action:(nonnull NSString *)action
                  optionalParameters:(NSDictionary *)optionalParameters
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter
                  )
RCT_EXTERN_METHOD(setUserId:(nonnull NSString *) userId
                  resolver:(RCTPromiseResolveBlock)resolver
                  rejecter:(RCTPromiseRejectBlock)rejecter
                  )

@end
