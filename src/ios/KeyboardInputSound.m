#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>

@interface KeyboardInputSound : CDVPlugin {
}

- (void)play:(CDVInvokedUrlCommand*)command;

@end

@implementation KeyboardInputSound

- (void)play:(CDVInvokedUrlCommand*)command
{
    [[UIDevice currentDevice] playInputClick];

    CDVPluginResult* pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
