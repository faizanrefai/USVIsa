//
//  RegistrationView.m
//  DemoApp
//
//  Created by openxcell121 on 11/20/33.
//  Copyright 1933 __MyCompanyName__. All rights reserved.
//

#import "RegistrationView.h"
#import "DemoAppAppDelegate.h"
#import "CategoryView.h"


@implementation RegistrationView

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
    [uname release];
    [pass release];
    [addQueButton release];
    [label1 release];
    [commentLabel release];
    [label1 release];
    [submitbutton release];
    [butLab1 release];
    [buitLab2 release];
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
    
    self.navigationItem.leftBarButtonItem.title=@"BACK";

    [super viewDidLoad];
    self.title=@"REGISTRATION";
    
    UIBarButtonItem * resetBut = [[UIBarButtonItem alloc]initWithTitle:@"RESET" style:UIBarButtonItemStyleBordered target:self action:@selector(popUp)];
    self.navigationItem.rightBarButtonItem = resetBut;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 3.13) {
        resetBut.tintColor=[UIColor redColor]; 
        self.navigationItem.leftBarButtonItem.tintColor=[UIColor redColor];
    }
    [resetBut release];
    
  	
    buitLab2.hidden=TRUE;
    butLab1.hidden=TRUE;
     
    uname.text=nil;
    pass.text=nil;
    commentLabel.hidden=FALSE;
    addQueButton.titleLabel.text =@"Click For Que";

        
    uname.delegate = self;
    pass.delegate= self;
    
}


-(void)popUp{

    [self viewDidLoad];

    UIAlertView *alert= [[UIAlertView alloc]initWithTitle:@"Message" message:@"All Information is Reset" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
    [alert show];
    [alert release];
    
       
   

}

-(IBAction)submitButtonPressed{


    NSLog(@"Submit");
    
        
    if ([uname.text length] && [pass.text length] ) {
        
        
        [[NSUserDefaults standardUserDefaults]setValue:uname.text forKey:@"user"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        [[NSUserDefaults standardUserDefaults]setValue:pass.text forKey:@"pass"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        UIAlertView *alert= [[UIAlertView alloc]initWithTitle:@"Message" message:@"Account Created Sucessfully !" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
        alert.tag=1;
        [alert release];
        
                
        
    }else{
        UIAlertView *alert= [[UIAlertView alloc]initWithTitle:@"Message" message:@"Please enter the information !" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:nil, nil];
        [alert show];
        alert.tag=2;
        [alert release];
        
    }
//

}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    if (alertView.tag==1) {
        CategoryView *categoryObj = [[CategoryView alloc]init];
        [self.navigationController pushViewController:categoryObj animated:YES];
    }
    


}

-(IBAction)labelSelect{

    if([butLab1 isTouchInside]){
        NSLog(@"1");
        
        commentLabel.hidden=FALSE;
       
        butLab1.hidden=TRUE;
        buitLab2.hidden=TRUE;
        addQueButton.titleLabel.text =@"           1";
    }
    if([buitLab2 isTouchInside]){
        
        NSLog(@"2");
        commentLabel.hidden=FALSE;
        
        butLab1.hidden=TRUE;
        buitLab2.hidden=TRUE;
        addQueButton.titleLabel.text =@"           2";
    }
}


- (BOOL)textFieldShouldReturn: (UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
    
} 
-(IBAction)commentButtonPressed{

    commentLabel.hidden=TRUE;
    butLab1.hidden=FALSE;
    buitLab2.hidden=FALSE;

}

- (void)viewDidUnload
{
    [uname release];
    uname = nil;
    [pass release];
    pass = nil;
    [addQueButton release];
    addQueButton = nil;
    [label1 release];
    label1 = nil;
    [commentLabel release];
    commentLabel = nil;
    [label1 release];
    label1 = nil;
    [submitbutton release];
    submitbutton = nil;
    [butLab1 release];
    butLab1 = nil;
    [buitLab2 release];
    buitLab2 = nil;
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
