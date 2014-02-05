//
//  RALocation.m
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import "RALocation.h"

@implementation RALocation

- (id)initWithDictionary:(NSDictionary *)dictionary{
    return nil;
}

- (NSDictionary *)toDictionary{
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    if (self.address) {
        dictionary[@"address"] = self.address;
    }
    
    if (self.latitude) {
        dictionary[@"latitude"] = [NSNumber numberWithDouble:self.latitude];
    }
    
    if (self.longitude) {
        dictionary[@"longitude"] = [NSNumber numberWithDouble:self.longitude];
    }
    
    return dictionary;
}

@end
