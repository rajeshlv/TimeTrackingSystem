//
//  TTRepository.h
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TTRepository : NSObject


@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


- (void)saveContext;

+(TTRepository *)sharedRepository;

@end
