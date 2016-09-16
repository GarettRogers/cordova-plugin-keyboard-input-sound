#import <Cordova/CDV.h>
#import <AudioToolbox/AudioToolbox.h>

@interface KeyboardInputSound : CDVPlugin {
}

- (void)play:(CDVInvokedUrlCommand*)command;

@end

@implementation KeyboardInputSound

- (void)play:(CDVInvokedUrlCommand*)command
{
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{ AudioServicesPlaySystemSound(1104); });

    CDVPluginResult* pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
