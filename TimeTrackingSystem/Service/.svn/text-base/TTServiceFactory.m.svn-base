//
//  TTServiceFactory.m
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "TTServiceFactory.h"
#import "TTUserService.h"



static TTUserService *userService = nil;

@implementation TTServiceFactory


/*+(TTServiceFactory *)sharedInstance{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[TTServiceFactory alloc]init];
    });
    
    return sharedInstance;
}*/


+(TTUserService *)getUserService{
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        userService = [[TTUserService alloc]init];
    });
    return userService;
}

@end
