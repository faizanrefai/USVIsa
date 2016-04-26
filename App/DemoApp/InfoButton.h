//
//  InfoButton.h
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface InfoButton : UIViewController {
    
    IBOutlet UIButton *serchButton;
    
}

@property(nonatomic,retain) IBOutlet UIButton *serchButton;
-(IBAction)serchBeing;

@end
