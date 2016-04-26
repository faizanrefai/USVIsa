//
//  QuestionView.m
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import "QuestionView.h"
#import "ResultView.h"


@implementation QuestionView

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
    [queLabel release];
    [button1 release];
    [button2 release];
    [nextButton release];
    [priviousButton release];
       [resultButton release];
    [noImg release];
    [yesImg release];
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
    
    resultButton.hidden=TRUE;
    yesImg.hidden=TRUE;
    noImg.hidden=TRUE;

    queLabel.text = @"Question 1";
    priviousButton.hidden=TRUE;
    self.title =@"QUESTIONS";
    UIBarButtonItem * resetBut = [[UIBarButtonItem alloc]initWithTitle:@"HOME" style:UIBarButtonItemStyleBordered target:self action:@selector(popUp)];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 3.13) {
        resetBut.tintColor=[UIColor redColor];  
        
    }
    self.navigationItem.leftBarButtonItem = resetBut;
    [resetBut release];
    
}

-(void)popUp{
    [self.navigationController popToRootViewControllerAnimated:YES];
}
-(IBAction)buttonPressed{


    if ([button1 isTouchInside]) {
        
        yesImg.hidden = FALSE;
        noImg.hidden=TRUE;
               
               
    }
    if([button2 isTouchInside]){
        
        yesImg.hidden = TRUE;
        noImg.hidden=FALSE;

         
    }
    if([priviousButton isTouchInside]){
        
             
    
    }
    

    if ([resultButton isTouchInside]) {
        ResultView *resultView =[[ResultView alloc]init];
        [self.navigationController pushViewController:resultView animated:YES];
    }
    
    if([nextButton isTouchInside]){
       
                 
        if ([queLabel.text isEqualToString:@"Question 2"]) {
            
            button1.hidden=FALSE;
            button2.hidden=FALSE;
            queLabel.text=@"Question 3";
            noImg.hidden=TRUE;
            yesImg.hidden = TRUE;
            nextButton.hidden=TRUE;
            priviousButton.hidden=TRUE;
            resultButton.hidden=FALSE;
            
        }
        
        if ([queLabel.text isEqualToString:@"Question 1"]) {

        noImg.hidden=TRUE;
        yesImg.hidden = TRUE;
        priviousButton.hidden=false;
        queLabel.text=@"Question 2";
    
        }
    }
}


- (void)viewDidUnload
{
    [queLabel release];
    queLabel = nil;
    [button1 release];
    button1 = nil;
    [button2 release];
    button2 = nil;
    [nextButton release];
    nextButton = nil;
    [priviousButton release];
    priviousButton = nil;
       [resultButton release];
    resultButton = nil;
    [noImg release];
    noImg = nil;
    [yesImg release];
    yesImg = nil;
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
