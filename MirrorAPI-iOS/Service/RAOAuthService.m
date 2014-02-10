//
//  RAOAurhService.m
//  MirrorAPISample
//
//  Created by Ravel Antunes on 2/10/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import "RAOAuthService.h"
#import "AFNetworking.h"
#import "RAGoogleOAuthSettings.h"

@implementation RAOAuthService


- (NSURL *)buildOAuthURLWith:(RAGoogleOAuthSettings *)settings andScope:(NSString*)scope{
    
    //Base url for authentication
    NSString *googleUrlString = @"https://accounts.google.com/o/oauth2/auth";
    
    //Builds the url string
    NSString *urlString = [NSString stringWithFormat:@"%@?response_type=%@&scope=%@&client_id=%@&redirect_uri=%@&approval_prompt=force&access_type=online", googleUrlString, @"code", scope, settings.clientID, settings.redirectURI];
    

    //Builds the url object
    NSURL *url = [NSURL URLWithString:urlString];
    
    return url;
    
}

- (void)exchangeCodeForToken:(NSString*)code withSettings:(RAGoogleOAuthSettings*)settings{
    
    //Url to exchange code for token
    NSString *urlString = [NSString stringWithFormat:@"https://accounts.google.com/o/oauth2/token"];
    
    
    //Initialize parameters
    NSDictionary *parameters = @{@"code":code,
                                 @"client_id":settings.clientID,
                                 @"client_secret":settings.clientSecret,
                                 @"redirect_uri":settings.redirectURI,
                                 @"grant_type":@"authorization_code"};
    
    
    //Initialize request
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager POST:urlString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        //Get the values from the response
        NSString *token = [responseObject objectForKey:@"access_token"];
        NSString *refreshToken = [responseObject objectForKey:@"refresh_token"];
        
        //Send the information to the delegate
        [self.delegate codeExchangeDidSuceedWithToken:token andRefreshToken:refreshToken];
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        //Sends the error object to the delegate
        [self.delegate codeExchangeDidFailWithError:error];
        
    }];
    
}

@end
