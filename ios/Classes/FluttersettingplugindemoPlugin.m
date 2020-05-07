#import "FluttersettingplugindemoPlugin.h"
#if __has_include(<fluttersettingplugindemo/fluttersettingplugindemo-Swift.h>)
#import <fluttersettingplugindemo/fluttersettingplugindemo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "fluttersettingplugindemo-Swift.h"
#endif

@implementation FluttersettingplugindemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFluttersettingplugindemoPlugin registerWithRegistrar:registrar];
}
@end
