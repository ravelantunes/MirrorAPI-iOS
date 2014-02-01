//
//  RAMenuItem.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RAEntityProtocol.h"

#pragma mark - TypeDefs

/*!
 Type of actions.
 */
typedef enum {
    RAActionTypeCustom,
    RAActionTypeReply,
    RAActionTypeReplyAll,
    RAActionTypeDelete,
    RAActionTypeShare,
    RAActionTypeReadAloud,
    RAActionTypeVoiceCall,
    RAActionTypeNavigate,
    RAActionTypeTogglePinned,
    RAActionTypeOpenURI,
    RAActionTypePlayVideo
}RAActionType;


@interface RAMenuItem : NSObject <RAEntityProtocol>


/*!
 The ID for this menu item. This is generated by the application and is treated as an opaque token.
 */
@property (strong, nonatomic) NSString* id;

@property (nonatomic) RAActionType action;


@property (strong, nonatomic) NSString *payload;

@end
