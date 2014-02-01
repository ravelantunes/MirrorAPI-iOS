//
//  RATimelineService.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RAGoogleOAuthSettings, RATimeline;


/*!
 Class responsible to handle API calls related to the Timeline resource
 
 @see RATimeline
 */
@interface RATimelineService : NSObject

/*!
 Acess token provided by google to authenticate the API calls.
 */
@property (strong, nonatomic) NSString* accessToken;


/*!
 Initialize the service with an access token.
 
 @param Access token provided by exchanging OAuth2 code with Google.
 */
- (id)initWithAccessToken:(NSString*)accessToken;

/*!
 Inserts a timeline item.
 */
- (void)insert:(RATimeline*)timeline;

@end
