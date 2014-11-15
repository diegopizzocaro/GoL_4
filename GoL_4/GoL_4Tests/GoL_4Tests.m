//
//  GoL_4Tests.m
//  GoL_4Tests
//
//  Created by Diego Pizzocaro on 15/11/2014.
//  Copyright (c) 2014 Diego Pizzocaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ApplyRule1.h"
#import "CreateGrid.h"

@interface GoL_4Tests : XCTestCase

@end

@implementation GoL_4Tests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    //XCTAssert(YES, @"Pass");
    
    NSMutableArray *initGrid = [CreateGrid generateEmptyGrid];
    
    NSMutableArray *finalGrid = [CreateGrid generateEmptyGrid];
    
    XCTAssert([finalGrid isEqualToArray:[ApplyRule1 evolveGrid:initGrid]], @"Rule1");
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
