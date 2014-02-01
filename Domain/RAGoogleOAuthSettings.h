//
//  RAGoogleOAuthSettings.h
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 Object to encapsulate Google OAuth2 settings.
 */
@interface RAGoogleOAuthSettings : NSObject

@property (strong, nonatomic) NSString *ClientID;
@property (strong, nonatomic) NSString *ClientSecret;
@property (strong, nonatomic) NSString *RedirectURI;

@end
