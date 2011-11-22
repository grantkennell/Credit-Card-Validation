//
//  Luhn_iOSTests.m
//  Luhn_iOSTests
//
//  Created by Sonny Fazio on 11/22/11.
//  Copyright (c) 2011 SonsterMedia. All rights reserved.
//

#import "Luhn_iOSTests.h"
#import "CreditCardValidation.h"
@implementation Luhn_iOSTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
	CreditCardValidation *cc = [[CreditCardValidation alloc]init];
	
	// Numbers generated from http://www.darkcoding.net/credit-card-numbers/
	STAssertEquals([cc validateCard:@"4485507961889771"], YES, @"FAIL: Luhn Test isn't working correctlly");
	STAssertEquals([cc validateCard:@"1234567891234567"], NO, @"FAIL: Luhn Test isn't working correctlly");


	
	
}

@end
