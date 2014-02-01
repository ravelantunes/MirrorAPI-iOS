//
//  RATimeline.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RAEntityProtocol.h"

@class RALocation;

@interface RATimelineItem : NSObject <RAEntityProtocol>

/*!
 HTML content for this item. If both text and html are provided for an item, the html will be rendered in the timeline.
 */
@property (strong, nonatomic) NSString *text;


/*!
 HTML content for this item. If both text and html are provided for an item, the html will be rendered in the timeline.
 */
@property (strong, nonatomic) NSString *html;


/*!
 A list of menu items that will be presented to the user when this item is selected in the timeline.
 */
@property (strong, nonatomic) NSArray *menuItems;


/*!
 The geographic location associated with this item.
 */
@property (strong, nonatomic) RALocation *location;

@end
