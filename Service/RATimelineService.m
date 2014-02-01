//
//  RATimelineService.m
//  SendToGlass
//
//  Created by Ravel Antunes on 1/31/14.
//  Copyright (c) 2014 Ravel Antunes. All rights reserved.
//

#import "RATimelineService.h"
#import "AFNetworking.h"
#import "RATimelineItem.h"

@interface RATimelineService ()

@property (strong, nonatomic) AFHTTPRequestOperationManager *manager;

@end


@implementation RATimelineService

#pragma mark - Init Methods

- (id)initWithAccessToken:(NSString *)accessToken{
    self = [super init];
    if (self) {
        self.accessToken = accessToken;
    }
    return self;
}

#pragma mark - Setters/Getters
- (AFHTTPRequestOperationManager *)manager{
    if (!_manager) {
        self.manager = [AFHTTPRequestOperationManager manager];
    }
    return _manager;
}


#pragma mark - API Calls
- (void)insert:(RATimelineItem*)timeline{

    //Timeline enpoint
    NSString *urlString = @"https://www.googleapis.com/mirror/v1/timeline";
    
    //Initialize JSON serializer
    self.manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    //Initialize header with the access token
    NSString *tokenHeader = [NSString stringWithFormat:@"Bearer %@", self.accessToken];
    [self.manager.requestSerializer setValue:tokenHeader forHTTPHeaderField:@"Authorization"];
    
    //Get timeline into a NSDictionary
    NSDictionary *parameters = [timeline toDictionary];
    
    //Starts call
    [self.manager POST:urlString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        NSLog(@"Response: %@", responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        NSLog(@"Response: %@", operation.responseString);
        NSLog(@"Error: %@", error.localizedDescription);
        
    }];

}

@end
