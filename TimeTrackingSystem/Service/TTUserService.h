//
//  TTUserService.h
//  TimeTrackingSystem
//
//  Created by Govind on 21/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TTRepository.h"



@interface TTUserService : NSObject

-(void)getUserDetailsWithBlock:(void (^)(NSArray *))blockName;

@end
