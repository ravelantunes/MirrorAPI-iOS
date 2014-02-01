//
//  RALocation.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RAEntityProtocol.h"

/*!
 A geographic location that can be associated with a timeline item.
 
 Sample json:
 {
     "kind": "mirror#location",
     "id": string,
     "timestamp": datetime,
     "latitude": double,
     "longitude": double,
     "accuracy": double,
     "displayName": string,
     "address": string
 }
 
 
 */
@interface RALocation : NSObject <RAEntityProtocol>


/*!
 The accuracy of the location fix in meters.
 */
@property (nonatomic) double accuracy;

/*!
 The full address of the location.
 */
@property (strong, nonatomic) NSString *address;

/*!
 The name to be displayed. This may be a business name or a user-defined place, such as "Home".
 */
@property (strong, nonatomic) NSString *displayName;

/*!
 The ID of the location.
 */
@property (strong, nonatomic, readonly) NSString *id;

/*!
 The type of resource. This is always mirror#location.
 */
@property (strong, nonatomic, readonly) NSString *kind;

/*!
 The latitude, in degrees.
 */
@property (nonatomic) double latitude;

/*!
 The longitude, in degrees.
 */
@property (nonatomic) double longitude;

/*!
 The time at which this location was captured, formatted according to RFC 3339.
 */
@property (nonatomic) NSTimeInterval timestamp;


@end
