#import "FlutterRoundedProgressBarPlugin.h"
#import <flutter_rounded_progress_bar/flutter_rounded_progress_bar-Swift.h>

@implementation FlutterRoundedProgressBarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFlutterRoundedProgressBarPlugin registerWithRegistrar:registrar];
}
@end
