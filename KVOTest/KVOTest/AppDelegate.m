//
//  AppDelegate.m
//  KVOTest
//
//  Created by Mac on 16/3/8.
//  Copyright © 2016年 Shm. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "SingleClass.h"
static ViewController *vc = nil;

static SecondViewController *secondVC = nil;

static ThirdViewController *thirdVC = nil;


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    UIStoryboard *storyBoard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    
//    ViewController *vc = [storyBoard instantiateInitialViewController];
    
    ViewController *vc = [SingleClass creatViewController];
    
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    
    self.window.rootViewController = nav;
    
    [self.window makeKeyAndVisible];
    
    
    
    return YES;
}
//+ (ViewController *)creatViewController {
//    
//    if (!vc) {
//        
//        vc = [[ViewController alloc]init];
//    }
//    
//    return vc;
//    
//}
//
//+ (SecondViewController *)creatSecondViewController {
//    
//    if (!secondVC) {
//        
//        secondVC = [[SecondViewController alloc]init];
//    }
//    
//    return secondVC;
//    
//}
//
//
//+ (ThirdViewController *)creatThirdViewController {
//    
//    if (!thirdVC) {
//        
//        thirdVC = [[ThirdViewController alloc]init];
//    }
//    
//    return thirdVC;
//    
//}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
