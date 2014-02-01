//
//  RATimeline.m
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import "RATimelineItem.h"
#import "RAMenuItem.h"
#import "RALocation.h"

@implementation RATimelineItem

- (id)initWithDictionary:(NSDictionary *)dictionary{
    return nil;
}

- (NSDictionary *)toDictionary{
    
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];

    if (self.text) {
        dictionary[@"text"] = self.text;
    }
    
    if (self.html) {
        dictionary[@"html"] = self.html;
    }
    
    NSMutableArray *menuItems = [[NSMutableArray alloc] init];
    for (RAMenuItem *menuItem in self.menuItems) {
        [menuItems addObject:[menuItem toDictionary]];
    }
    if (menuItems.count) {
        dictionary[@"menuItems"] = menuItems;
    }
    
    if (self.location) {
        dictionary[@"location"] = [self.location toDictionary];
    }
    
    return dictionary;
}

@end
