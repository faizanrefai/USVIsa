//
//  RootViewController.h
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface RootViewController : UIViewController {



}
    

@property (nonatomic,retain) IBOutlet UIButton *startNewSearchBtn;
@property (nonatomic,retain) IBOutlet UIButton *continueSearchBtn;
@property (nonatomic,retain) IBOutlet UIButton *viewSearchResultBtn;

-(IBAction)continueSearch:(id)sender;
-(IBAction)startNewSearch:(id)sender;
-(IBAction)viewSearchResult:(id)sender;

@end
