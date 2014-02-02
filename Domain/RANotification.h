//
//  RANotification.h
//  SendToGlass
//
//  Created by Ravel Antunes on 2/1/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RAEntityProtocol.h"

@interface RANotification : NSObject
<RAEntityProtocol>

@property (nonatomic) NSString *level;

@end
