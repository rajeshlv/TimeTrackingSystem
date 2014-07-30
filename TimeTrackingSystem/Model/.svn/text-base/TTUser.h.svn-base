//
//  TTUser.h
//  TimeTrackingSystem
//
//  Created by Govind on 21/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class TTProject, TTUser;

@interface TTUser : NSManagedObject

@property (nonatomic, retain) NSString * empDesignation;
@property (nonatomic, retain) NSNumber * empId;
@property (nonatomic, retain) NSString * empName;
@property (nonatomic, retain) NSString * empPassword;

@property (nonatomic, retain) NSSet *userprojects;
@property (nonatomic, retain) NSSet *managers;
@property (nonatomic, retain) NSSet *directReports;
@end

@interface TTUser (CoreDataGeneratedAccessors)

- (void)addUserprojectsObject:(TTProject *)value;
- (void)removeUserprojectsObject:(TTProject *)value;
- (void)addUserprojects:(NSSet *)values;
- (void)removeUserprojects:(NSSet *)values;

- (void)addManagersObject:(TTUser *)value;
- (void)removeManagersObject:(TTUser *)value;
- (void)addManagers:(NSSet *)values;
- (void)removeManagers:(NSSet *)values;

- (void)addDirectReportsObject:(TTUser *)value;
- (void)removeDirectReportsObject:(TTUser *)value;
- (void)addDirectReports:(NSSet *)values;
- (void)removeDirectReports:(NSSet *)values;

@end
