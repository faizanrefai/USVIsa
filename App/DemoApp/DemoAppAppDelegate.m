//
//  DemoAppAppDelegate.m
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import "DemoAppAppDelegate.h"

@implementation DemoAppAppDelegate

@synthesize image1=_image1;
@synthesize window=_window;

@synthesize navigationController=_navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    // Add the navigation controller's view to the window and display.

    
   
    _image1 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"NavigationBar.png"]];
    
    
    if ([self.navigationController.navigationBar respondsToSelector:@selector( setBackgroundImage:forBarMetrics:)]){
     
        [self.navigationController.navigationBar setBackgroundImage:_image1.image forBarMetrics:UIBarMetricsDefault];
       
        [self.navigationController.navigationBar
     setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                        [UIColor whiteColor], UITextAttributeTextColor, 
                        [UIColor whiteColor], UITextAttributeTextShadowColor, 
                        [NSValue valueWithUIOffset:UIOffsetMake(0, 1)], UITextAttributeTextShadowOffset, 
                        [UIFont boldSystemFontOfSize:15], UITextAttributeFont, 
                        nil]];

    }
    
   
    self.navigationController.navigationBar.tintColor =[UIColor colorWithRed:15.0/255.0 green:45.0/255.0 blue:116.0/255.0 alpha:1.0];  
    
    self.navigationController.navigationItem.rightBarButtonItem.tintColor=[UIColor colorWithRed:255.0/255.0 green:45.0/255.0 blue:116.0/255.0 alpha:1.0];  
    self.navigationController.navigationItem.leftBarButtonItem.tintColor=[UIColor colorWithRed:255.0/255.0 green:45.0/255.0 blue:116.0/255.0 alpha:1.0];  

    self.window.rootViewController = self.navigationController;
    [self.window makeKeyAndVisible];
    
    return YES;
    
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_image1 release];
    [_window release];
    [_navigationController release];
    [super dealloc];
}

@end
