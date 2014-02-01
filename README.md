MirrorAPI-iOS
=============

A library to help interact with the mirror API. Still in early development stages.

Working on replicate most (if not 100%) of Google's Mirror API using Objective-C objects and syntax.

To use the example below, you must first have implemented a way to authenticate the API using Google OAuth 2.


Dependencies:
-------

[AFNetworking 2.0](https://www.google.com/search?client=safari&rls=en&q=afnetworking+2.0&ie=UTF-8&oe=UTF-8) for the network calls.



Example:
-------

Define a property for the service:

    @property (strong, nonatomic) RATimelineService *timelineService;
    

Create a timeline item object:

    RATimelineItem *timelineItem = [[RATimelineItem alloc] init];
    timelineItem.text = @"Hello, world!"
    
Create menu items for the timeline:

    RAMenuItem *menuItemDelete = [[RAMenuItem alloc] init];
    menuItemDelete.action = RAActionTypeDelete;
    
    timelineItem.menuItems = @[menuItemDelete];
    
    
    
Insert the timeline:
  
    NSString *token = @"OAuth2TokenReceivedByGoogle!";
    self.timelineService = [[RATimelineService alloc] initWithAccessToken:token];
    
    [self.timelineService insert:timelineItem];
    
    
To Do:
-------

A simple abstraction to handle Google's OAuth mobile device flow.