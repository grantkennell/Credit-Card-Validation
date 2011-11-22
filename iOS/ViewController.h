//
//  ViewController.h
//  Luhn_iOS
//
//  Created by Sonny Fazio on 11/22/11.
//  Copyright (c) 2011 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *cc_field;
}
@property (strong, nonatomic) IBOutlet UIImageView *cardImage;
- (IBAction)changevalidationString:(id)sender;
- (IBAction)runLuhnTest:(id)sender;

@end
