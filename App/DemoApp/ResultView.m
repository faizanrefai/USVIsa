//
//  ResultView.m
//  DemoApp
//
//  Created by openxcell121 on 11/21/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import "ResultView.h"


@implementation ResultView

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
    self.title=@"RESULT";
    UIBarButtonItem * resetBut = [[UIBarButtonItem alloc]initWithTitle:@"Home" style:UIBarButtonItemStyleBordered target:self action:@selector(popUp)];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 3.13) {
        
        resetBut.tintColor=[UIColor redColor];   
    }
    self.navigationItem.leftBarButtonItem = resetBut;
    [resetBut release];
    
}

-(void)popUp{
    [self.navigationController popToRootViewControllerAnimated:YES];
}


- (void)viewDidUnload
{
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
