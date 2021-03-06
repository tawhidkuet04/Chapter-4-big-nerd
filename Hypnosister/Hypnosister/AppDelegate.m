//
//  AppDelegate.m
//  Hypnosister
//
//  Created by Tawhid Joarder on 3/13/19.
//  Copyright © 2019 Tawhid Joarder. All rights reserved.
//

#import "AppDelegate.h"
#import "BNRHypnosisView.h"
#import "ViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
//    ViewController * viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
   //self.window.rootViewController = viewController;
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] ;
    
    ViewController *rootController = [[ViewController alloc] init];
    
    UINavigationController  *navController = [[UINavigationController alloc]initWithRootViewController:rootController];
    
    self.window.rootViewController = navController;
    // create CGrects for frames
    CGRect screenRect = self.window.bounds;
    CGRect bigRect = screenRect ;
    bigRect.size.width *= 2 ;
   // bigRect.size.height *= 4 ;
    // create screen size scrool view and add it to the window view
    UIScrollView *scroolView = [ [UIScrollView alloc] initWithFrame:screenRect ] ;
    scroolView.pagingEnabled = YES ;
    [self.window.rootViewController.view addSubview:scroolView];
    BNRHypnosisView *hypnosisView =  [ [ BNRHypnosisView alloc] initWithFrame:screenRect];
    [scroolView addSubview:hypnosisView];
    screenRect.origin.x += screenRect.size.width ;
    BNRHypnosisView *anotherView = [ [BNRHypnosisView alloc]initWithFrame:screenRect];
    [ scroolView addSubview:anotherView];
    scroolView.contentSize = bigRect.size ;
    
    
    
 //   firstView.backgroundColor = [ UIColor clearColor];
    
    
//    CGRect secondFrame = CGRectMake(20,80, 50, 60);
//    BNRHypnosisView *secondView = [ [BNRHypnosisView alloc] initWithFrame:secondFrame];
//    secondView.backgroundColor = [ UIColor blueColor];
//    [firstView addSubview:secondView];
    
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    [self.window makeKeyAndVisible];
    
    
    return YES;
//    CGRect firstFrame = CGRectMake(160,240, 100, 150);
//    BNRHypnosisView *firstView = [ [BNRHypnosisView alloc] initWithFrame:firstFrame];
//    firstView.backgroundColor = [ UIColor redColor];
//    [self.window addSubview:firstView];
//    self.window.backgroundColor = [UIColor blueColor];
//
//    [self.window makeKeyAndVisible];
//    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
