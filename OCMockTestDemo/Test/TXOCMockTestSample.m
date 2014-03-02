//
//  TXOCMockTestSample.m
//  UnitDemo
//
//  Created by tingxuan.qhm on 14-3-2.
//  Copyright (c) 2014年 tingxuan.qhm. All rights reserved.
//

#import "TXOCMockTestSample.h"
#import "OCMockObject.h"
#import "OCMock.h"

@implementation TXOCMockTestSample
//OCMockPass sample
- (void)testOCMockPass

{
    
    id mock = [OCMockObject mockForClass:NSString.class];
    
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    
    GHAssertEqualObjects(@"mocktest", returnValue,
                         
                         @"Should have returned the expected string.");
    
}

- (void)testOCMockFail

{
    
    id mock = [OCMockObject mockForClass:NSString.class];
    
    [[[mock stub] andReturn:@"mocktest"] lowercaseString];
    
    NSString *returnValue = [mock lowercaseString];
    
    GHAssertEqualObjects(@"thisIsTheWrongValueToCheck",
                         
                         returnValue, @"Should have returned the expected string.");
    
}

@end
