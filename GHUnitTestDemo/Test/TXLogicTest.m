//
//  TXLogicTest.m
//  UnitDemo
//
//  Created by tingxuan.qhm on 14-3-2.
//  Copyright (c) 2014年 tingxuan.qhm. All rights reserved.
//

#import "TXLogicTest.h"

@implementation TXLogicTest
-(void)testStringEquals2Another
{
    NSString * stringA =@"stringA";
    NSString * stringB =@"stringB";
    GHAssertEqualObjects(stringA, stringB, @"校验2个string是否相等");
}
@end
