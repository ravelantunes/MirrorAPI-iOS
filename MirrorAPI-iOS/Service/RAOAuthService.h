//
//  RAOAurhService.h
//  MirrorAPISample
//
//  Created by Ravel Antunes on 2/10/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>

@class RAGoogleOAuthSettings;


#pragma mark - Protocol Declaration

@protocol RAOAuthServiceProtocol <NSObject>

/*!
 Method called when the code exchange succeeds.
 
 @param token to be used on api calls
 @param refresh token to exchange for a new token
 */
- (void)codeExchangeDidSuceedWithToken:(NSString*)token andRefreshToken:(NSString*)refreshToken;


/*!
 Method calle when request fails
 
 @param error object received from the http request
 */
- (void)codeExchangeDidFailWithError:(NSError*)error;

@end


#pragma mark - Class Declaration

@interface RAOAuthService : NSObject


/*!
 Builds the OAuthURL to ask user to authenticate with google.
 
 @param settings with google app information
 */
- (NSURL*)buildOAuthURL:(RAGoogleOAuthSettings*)settings;

/*!
 Second step of OAuth 2 flow.
 Make a request to Google web service to exchange the authorization code for a authentication token.
 
 @param code received from the redirect url
 @param settings with google app information
 */
- (void)exchangeCodeForToken:(NSString*)code withSettings:(RAGoogleOAuthSettings*)settings;


/*!
 Objects that will receive callbacks from the responses made by this service.
 */
@property (weak, nonatomic) id<RAOAuthServiceProtocol> delegate;

@end
