//
//  RANotification.m
//  SendToGlass
//
//  Created by Ravel Antunes on 2/1/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import "RANotification.h"

@implementation RANotification

- (instancetype)initWithDictionary:(NSDictionary *)dictionary{
    return nil;
}

- (NSDictionary *)toDictionary{
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    
    if (self.level) {
        dictionary[@"level"] = self.level;
    }
    
    return dictionary;
}

@end
