#import "FlutterDeviceLocalePlugin.h"

@implementation FlutterDeviceLocalePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterDeviceLocalePlugin* instance = [[FlutterDeviceLocalePlugin alloc] init];

  FlutterMethodChannel* channel =
      [FlutterMethodChannel methodChannelWithName:@"flutter_device_locale"
                                  binaryMessenger:[registrar messenger]];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([call.method isEqualToString:@"deviceLocales"]) {
    result([NSLocale preferredLanguages]);
  } else {
    result(FlutterMethodNotImplemented);
  }
}
@end
