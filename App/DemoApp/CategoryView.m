//
//  CategoryView.m
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import "CategoryView.h"
#import "QuestionView.h"
#import "RootViewController.h"


@implementation CategoryView


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [stubentVisaButton release];
    [touristVisaButton release];
    [emplyeeBasedVisa release];
    [familyBasedVisa release];
    [imgTourist release];
    [imgInvest release];
    [imgFamily release];
    [imgEmpl release];
    [imgStudent release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title=@"CATEGORY VIEW";
    

    
    UIBarButtonItem * resetBut = [[UIBarButtonItem alloc]initWithTitle:@"HOME" style:UIBarButtonItemStyleBordered target:self action:@selector(popUp)];
    self.navigationController.navigationItem.rightBarButtonItem.tintColor=[UIColor colorWithRed:255.0/255.0 green:45.0/255.0 blue:116.0/255.0 alpha:1.0];  
    self.navigationController.navigationItem.leftBarButtonItem.tintColor=[UIColor colorWithRed:255.0/255.0 green:45.0/255.0 blue:116.0/255.0 alpha:1.0];  
    
    resetBut.title= @"Home";
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 5.0) {
        resetBut.tintColor=[UIColor redColor]; 
    
    }  
    
    self.navigationItem.leftBarButtonItem = resetBut;

    [resetBut release];

}

-(void)popUp{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(IBAction)continueButtonPressed;
{
    
    QuestionView *queObj= [[QuestionView alloc]init];
    [self.navigationController pushViewController:queObj animated:YES];
   
}

-(IBAction)familyVisa{
    
    
   
    if(imgFamily.tag==0){  
        imgFamily.image=[UIImage imageNamed:@"RedBullet.png"] ;
        imgFamily.tag=1;   
    }else{
        imgFamily.image=[UIImage imageNamed:@"WhiteBullet.png"] ;
        imgFamily.tag=0;   
    }
    
}
-(IBAction)emplyeeVisa{
   
    if (imgEmpl.tag==0) {
        imgEmpl.image=[UIImage imageNamed:@"RedBullet.png"] ;
        imgEmpl.tag=1;
    }else{
    
        imgEmpl.image=[UIImage imageNamed:@"WhiteBullet.png"] ;
        imgEmpl.tag=0;
    }
}
-(IBAction)touristVisa{
    if (imgTourist.tag==0) {
        imgTourist.image=[UIImage imageNamed:@"RedBullet.png"] ;
        imgTourist.tag=1;
    }else{
        imgTourist.image=[UIImage imageNamed:@"WhiteBullet.png"] ;
        imgTourist.tag=0;

    
    }
}
-(IBAction)studentVisa{
    if (imgStudent.tag==0) {
        imgStudent.image=[UIImage imageNamed:@"RedBullet.png"] ;
        imgStudent.tag=1;
    } else{
        imgStudent.image=[UIImage imageNamed:@"WhiteBullet.png"] ;
        imgStudent.tag=0;
    
    }
}
-(IBAction)investmentButton{
   
    if (imgInvest.tag==0) {
        imgInvest.image=[UIImage imageNamed:@"RedBullet.png"] ;
        imgInvest.tag=1;
    }else{
        imgInvest.image=[UIImage imageNamed:@"WhiteBullet.png"] ;
        imgInvest.tag=0;
    
    }
}

- (void)viewDidUnload
{
      
    [stubentVisaButton release];
    stubentVisaButton = nil;
    [touristVisaButton release];
    touristVisaButton = nil;
    [emplyeeBasedVisa release];
    emplyeeBasedVisa = nil;
    [familyBasedVisa release];
    familyBasedVisa = nil;
    [imgTourist release];
    imgTourist = nil;
    [imgInvest release];
    imgInvest = nil;
    [imgFamily release];
    imgFamily = nil;
    [imgEmpl release];
    imgEmpl = nil;
    [imgStudent release];
    imgStudent = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
