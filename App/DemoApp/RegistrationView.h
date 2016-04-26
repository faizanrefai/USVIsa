//
//  RegistrationView.h
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface RegistrationView : UIViewController <UITextFieldDelegate, UIAlertViewDelegate > {
    IBOutlet UILabel *label2;

    IBOutlet UIButton *buitLab2;
    IBOutlet UIButton *butLab1;
    IBOutlet UILabel *label1;
    IBOutlet UILabel *commentLabel;
    IBOutlet UIButton *addQueButton;
    IBOutlet UITextField *pass;
    IBOutlet UIButton *submitbutton;
    IBOutlet UITextField *uname;
}

-(IBAction)commentButtonPressed;
-(IBAction)submitButtonPressed;
-(IBAction)labelSelect;



@end
