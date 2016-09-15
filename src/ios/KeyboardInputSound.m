#import <Cordova/CDV.h>
#import <UIKit/UIKit.h>

@interface CDVKeyboardInputSound : CDVPlugin {
}

- (void)play:(CDVInvokedUrlCommand*)command;

@end

@implementation CDVKeyboardInputSound

- (void)play:(CDVInvokedUrlCommand*)command
{
    [[UIDevice currentDevice] playInputClick];

    CDVPluginResult* pluginResult = nil;
    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"success"];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
