#import "MwidgetsPlugin.h"
#import <mwidgets/mwidgets-Swift.h>

@implementation MwidgetsPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMwidgetsPlugin registerWithRegistrar:registrar];
}
@end
