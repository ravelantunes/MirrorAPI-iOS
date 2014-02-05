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
    
    //Create timeline object
    RATimelineItem *timelineItem = [[RATimelineItem alloc] init];
    
    //Set properties
    timelineItem.id = @"12345";
    timelineItem.text = @"test text";
    timelineItem.html = @"test html";
    
    //Transform to dictionary
    NSDictionary *dictionaryRepresentation = [timelineItem toDictionary];
    
    XCTAssert(dictionaryRepresentation[@"id"], @"Key id is non existent.");
    XCTAssert(dictionaryRepresentation[@"text"], @"Key text is non existent.");
    XCTAssert(dictionaryRepresentation[@"html"], @"Key html is non existent.");
    
    
}


@end
