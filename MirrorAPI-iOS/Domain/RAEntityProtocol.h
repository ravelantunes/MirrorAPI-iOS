//
//  RAEntityProtocol.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>


/*!
 This protocol should be implemented by the domain objects, so they respond
 to the nescessary methods serialize/deserialize to/from NSDicionary.
 */
@protocol RAEntityProtocol <NSObject>

/*!
 Initialize the item with the values of a NSDictionary
 */
- (instancetype)initWithDictionary:(NSDictionary*)dictionary;

/*!
 Returns a NSDictionary representation of that object.
 */
- (NSDictionary*)toDictionary;

@end
