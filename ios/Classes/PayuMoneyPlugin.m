#import "PayuMoneyPlugin.h"
#if __has_include(<payu_money_plugin/payu_money_plugin-Swift.h>)
#import <payu_money_plugin/payu_money_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "payu_money_plugin-Swift.h"
#endif

@implementation PayuMoneyPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPayuMoneyPlugin registerWithRegistrar:registrar];
}
@end
