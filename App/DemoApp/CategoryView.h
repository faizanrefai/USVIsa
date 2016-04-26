//
//  CategoryView.h
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CategoryView : UIViewController {
    

    IBOutlet UIImageView *imgEmpl;
    IBOutlet UIImageView *imgFamily;
    IBOutlet UIImageView *imgInvest;
    IBOutlet UIImageView *imgTourist;
    IBOutlet UIButton *familyBasedVisa;
    IBOutlet UIButton *emplyeeBasedVisa;
    IBOutlet UIButton *touristVisaButton;
    IBOutlet UIButton *stubentVisaButton;
    IBOutlet UIButton *continueButton;
    IBOutlet UIButton *investmentButon;
    IBOutlet UIImageView *imgStudent;
    int x ;
}

-(IBAction)continueButtonPressed;
-(IBAction)familyVisa;
-(IBAction)emplyeeVisa;
-(IBAction)touristVisa;
-(IBAction)studentVisa;
-(IBAction)investmentButton;


@end
