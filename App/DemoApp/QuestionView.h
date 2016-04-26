//
//  QuestionView.h
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface QuestionView : UIViewController {
    
    IBOutlet UIImageView *yesImg;
    IBOutlet UIImageView *noImg;
    IBOutlet UIButton *resultButton;
  
    IBOutlet UIButton *priviousButton;
    IBOutlet UIButton *nextButton;
    IBOutlet UIButton *button2;
    IBOutlet UIButton *button1;
    IBOutlet UILabel *queLabel;
}

-(IBAction)buttonPressed;

@end
