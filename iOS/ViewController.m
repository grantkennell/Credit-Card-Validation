//
//  ViewController.m
//  Luhn_iOS
//
//  Created by Sonny Fazio on 11/22/11.
//  Copyright (c) 2011 SonsterMedia. All rights reserved.
//

#import "ViewController.h"
#import "CreditCardValidation.h"

@implementation ViewController
@synthesize cardImage;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    cc_field = nil;
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)changevalidationString:(id)sender {
    
    NSString *cc_num_string = ((UITextField*)sender).text;
    UITextField *textField = ((UITextField*)sender);
    textField.rightViewMode = UITextFieldViewModeAlways; 
    if ([cc_num_string length] > 1 && [cc_num_string characterAtIndex:0] == '4')
    {textField.rightView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"visa.png"]];}
    
    else if ([cc_num_string length] > 1 && [cc_num_string characterAtIndex:0] == '5' && ([cc_num_string characterAtIndex:1] == '1' || [cc_num_string characterAtIndex:1] == '5'))
    {textField.rightView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"mastercard.png"]];}
    
    else if ([cc_num_string length] > 1 && [cc_num_string characterAtIndex:0] == '6' && ([cc_num_string characterAtIndex:1] == '5' || ([cc_num_string length] > 2 &&[cc_num_string length] > 1 && [cc_num_string characterAtIndex:1] == '4' && [cc_num_string characterAtIndex:2] == '4') || ([cc_num_string length] > 3 && [cc_num_string characterAtIndex:1] == '0' && [cc_num_string characterAtIndex:2] == '1' && [cc_num_string characterAtIndex:3] == '1' )))
    { textField.rightView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"discover.png"]];}
    
    else if ([cc_num_string length] > 1 && [cc_num_string characterAtIndex:0] == '3' && ([cc_num_string characterAtIndex:1] == '4' || [cc_num_string characterAtIndex:1] == '7'))
    { textField.rightView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"americanexpress.png"]];}
    
    else{textField.rightView = nil;}
    
  }

- (IBAction)runLuhnTest:(id)sender {
    
    CreditCardValidation *cc = [[CreditCardValidation alloc]init];
    
    if ([cc validateCard:cc_field.text])
    {
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Credit Card number valid" message:@"The credit card passes the Luhn test. This means the number itself matches what a credit card company would issue. This however does not mean that the account has money in it." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles: nil]; 
        [alert show];
    }
    else{
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Credit Card number invalid" message:@"The credit card failed the Luhn test. This means the number entered does not match what a credit card company would issue." delegate:nil cancelButtonTitle:@"Okay" otherButtonTitles: nil]; 
        [alert show];  
        
    }
}



@end
