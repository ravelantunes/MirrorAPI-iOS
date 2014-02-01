//
//  RAMenuItem.m
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import "RAMenuItem.h"

@implementation RAMenuItem

- (NSDictionary *)toDictionary{
    NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] init];
    
    dictionary[@"action"] = [self actionTypeString:self.action];
//    [dictionary setObject:@"action" forKey:[self actionTypeString:self.action]];
    
    if (self.payload) {
        dictionary[@"payload"] = self.payload;
    }
    
    
    return dictionary;
}


/*!
 Maps enum into the String expected in the API
 */
- (NSString*)actionTypeString:(RAActionType)actionType{
    switch (actionType) {
        case RAActionTypeCustom:
            return @"CUSTOM";
        case RAActionTypeReply:
            return @"REPLY";
        case RAActionTypeReplyAll:
            return @"REPLY_ALL";
        case RAActionTypeDelete:
            return @"DELETE";
        case RAActionTypeShare:
            return @"SHARE";
        case RAActionTypeReadAloud:
            return @"READ_ALOUd";
        case RAActionTypeVoiceCall:
            return @"VOICE_CALL";
        case RAActionTypeNavigate:
            return @"NAVIGATE";
        case RAActionTypeTogglePinned:
            return @"TOGGLE_PINNED";
        case RAActionTypeOpenURI:
            return @"OPEN_URI";
        case RAActionTypePlayVideo:
            return @"PLAY_VIDEO";
            break;
        default:
            break;
    }
}

- (NSString *)description{
    return [[self toDictionary] description];
}

@end
