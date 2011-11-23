//
//  main.m
//  LuhnyBin
//
//  Created by Sonny Fazio on 11/22/11.
//  Copyright (c) 2011 SonsterMedia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CreditCardValidation.h"
int main (int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
    }
    
    CreditCardValidation *cc = [[CreditCardValidation alloc]init];
	
	
     if ([cc validateCard:@"5570691909608312"])
     {
         NSLog(@"The Credit Card Number is Valid");
     }
    else
    {
        NSLog(@"The Credit Card Number is Fake");
    }
    [cc release];
    
    return 0;
}

