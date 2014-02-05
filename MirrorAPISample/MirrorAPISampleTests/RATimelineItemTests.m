//
//  RATimelineTests.m
//  MirrorAPISample
//
//  Created by Ravel Antunes on 2/4/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RATimelineItem.h"

@interface RATimelineItemTests : XCTestCase

@end

@implementation RATimelineItemTests

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}


- (void)testToDictionary{
    
    RATimelineItem *timelineItem = [[RATimelineItem alloc] init];
    
    timelineItem.text = @"test";
    
    NSDictionary *dictionaryRepresentation = [timelineItem toDictionary];
    
    XCTAssert([dictionaryRepresentation objectForKey:@"text"], @"Key text is non existent.");
    
}


@end
