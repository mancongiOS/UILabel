//
//  AppDelegate.m
//  Demo-UILabel
//
//  Created by goulela on 16/5/26.
//  Copyright © 2016年 bububa. All rights reserved.
//

#import "AppDelegate.h"

#import "MCTabbarController.h"

@interface AppDelegate ()



@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    MCTabbarController * tabbar = [[MCTabbarController alloc] init];
    
    self.window.rootViewController = tabbar;
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
}


@end
