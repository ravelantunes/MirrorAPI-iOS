//
//  RATimelineService.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol RATimelineServiceDelegate <NSObject>

- (void)requestDidSucceed:(id)result;
- (void)requestDidFail:(NSError*)error;

@end

@class RAGoogleOAuthSettings, RATimelineItem;


/*!
 Class responsible to handle API calls related to the Timeline resource
 
 @see RATimeline
 */
@interface RATimelineService : NSObject

@property (weak, nonatomic) id<RATimelineServiceDelegate> delegate;

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
- (void)insert:(RATimelineItem*)timeline;

@end
