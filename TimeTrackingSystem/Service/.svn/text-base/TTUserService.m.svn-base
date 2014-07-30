//
//  TTUserService.m
//  TimeTrackingSystem
//
//  Created by Govind on 21/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "TTUserService.h"
#import "NSManagedObject+TTAdditions.h"
#import "TTRepository.h"
#import "TTUser.h"


@implementation TTUserService


-(void)getUserDetailsWithBlock:(void (^)(NSArray *))block{
    
    NSError *err = nil;
    
    NSStringEncoding enc;
    
    NSString *pathForResource = [[NSBundle mainBundle]pathForResource:@"user" ofType:@"json"];
    
    NSString *userDetails = [NSString stringWithContentsOfFile:pathForResource usedEncoding:&enc error:&err];
    
    if (enc == NSUTF8StringEncoding) {
        NSData *jsonData = [userDetails dataUsingEncoding:NSUTF8StringEncoding];
        NSError *e;
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingAllowFragments error:&e];
        [self insertIntoRepo:[dict objectForKey:@"User"] WithBlock:^(NSArray *arr) {
            block(arr);
        }];
    }
}

-(void)insertIntoRepo:(NSArray *)users WithBlock:(void (^)(NSArray *))block{
    
    for (NSDictionary *dict in users) {
        NSNumber *empId = [NSNumber numberWithInt:[[dict valueForKey:@"empId"] integerValue]];
        
        if ([self isRowExists:empId context:[TTRepository sharedRepository].managedObjectContext]) {
            continue;
        }
        
        TTUser *user = [TTUser createManagedObjectInContext:[TTRepository sharedRepository].managedObjectContext];
        user.empId   = empId;
        user.empName = [dict valueForKey:@"empName"];
        user.empDesignation = @"Experion";
        [[TTRepository sharedRepository] saveContext];
    }
    
    
    NSArray *allUsers = [self getAllUsers];
    
    [self testRelationship:allUsers];
    
    block(allUsers);
}

-(NSArray *)getAllUsers{
    NSArray *allUsers = nil;
    NSError *err;
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"TTUser"];
    
    NSManagedObjectContext *context = [TTRepository sharedRepository].managedObjectContext;
    
    allUsers = [context executeFetchRequest:fetchRequest error:&err];
    
    return allUsers;
}

-(BOOL)isRowExists:(NSNumber *)empId context:(NSManagedObjectContext *)context{
    BOOL isExists = FALSE;
    
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"TTUser" inManagedObjectContext:context];
    
    [request setEntity:entity];
    
    [request setPredicate:[NSPredicate predicateWithFormat:@"empId == %@",empId]];
    
    NSError *error = nil;
    
    NSUInteger count = [context countForFetchRequest:request error:&error];
    
    if (count > 0) {
        isExists = YES;
    }
    return isExists;
}

-(void)testRelationship:(NSArray *)dataSource{
    
    TTUser *user1, *user2, *user3, *user4, *user5;
    
    for (TTUser *user in dataSource) {
        if ([user.empId integerValue] == 1) {
            user1 = user;
        }
        if ([user.empId integerValue] == 2) {
            user2 = user;
        }
        if ([user.empId integerValue] == 4) {
            user3 = user;
        }
        if ([user.empId integerValue] == 7) {
            user4 = user;
        }
        if ([user.empId integerValue] == 8) {
            user5 = user;
        }
    }
    
     [user1 addDirectReportsObject:user2];
     
     [user2 addDirectReportsObject:user3];
     
     [user3 addDirectReportsObject:user4];
     
     [user3 addDirectReportsObject:user5];
     
     [user3 addManagersObject:user2];
     
     [user2 addManagersObject:user1];
     
     [[TTRepository sharedRepository]saveContext];

}

@end
