//
//  ORAppDelegate.m
//  HeartBit
//
//  Created by Csaba Csordas on 15/02/2014.
//  Copyright (c) 2014 Open Reply. All rights reserved.
//

#import "ORAppDelegate.h"
#import <Parse/Parse.h>

@implementation ORAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //Setting up for puch notifications
    
    [Parse setApplicationId:@"Vd1jgpfxTdTqCLSF9ZZHng1571BLawx4eR4XErfk"
                  clientKey:@"ZBIxybhLrbYSgNoL6aFACF6jHjfddXO8KpR5qcVp"];
    
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|
     UIRemoteNotificationTypeAlert|
     UIRemoteNotificationTypeSound];
    
    return YES;
}


- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    // Store the deviceToken in the current installation and save it to Parse.
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:deviceToken];
    [currentInstallation saveInBackground];
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo {
    [PFPush handlePush:userInfo];
}


@end
