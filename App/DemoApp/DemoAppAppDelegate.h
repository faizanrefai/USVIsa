//
//  DemoAppAppDelegate.h
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
@interface DemoAppAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic,retain)IBOutlet UIImageView *image1;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end
