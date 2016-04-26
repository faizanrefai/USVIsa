//
//  InfoButton.m
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import "InfoButton.h"
#import "RegistrationView.h"
#import "CategoryView.h"


@implementation InfoButton
@synthesize serchButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(IBAction)serchBeing{

    if ([[NSUserDefaults standardUserDefaults] valueForKey:@"user"] != nil ) {
        
        CategoryView *cate =[[CategoryView alloc]initWithNibName:@"CategoryView" bundle:nil];
        [self.navigationController pushViewController:cate animated:YES];

    }
    else{

    RegistrationView *registerObj = [[RegistrationView alloc]init];
    
    [self.navigationController pushViewController:registerObj animated:YES];

    }


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
    self.title=@"INFO";
   
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 3.13) {
        self.navigationItem.leftBarButtonItem.tintColor=[UIColor redColor];
    }

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
