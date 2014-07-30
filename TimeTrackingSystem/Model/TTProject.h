//
//  TTProject.h
//  TimeTrackingSystem
//
//  Created by Govind on 21/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class TTUser;

@interface TTProject : NSManagedObject

@property (nonatomic, retain) NSString * projectCode;
@property (nonatomic, retain) NSString * projectName;
@property (nonatomic, retain) NSSet *projectusers;
@end

@interface TTProject (CoreDataGeneratedAccessors)

- (void)addProjectusersObject:(TTUser *)value;
- (void)removeProjectusersObject:(TTUser *)value;
- (void)addProjectusers:(NSSet *)values;
- (void)removeProjectusers:(NSSet *)values;

@end
