//
//  NSManagedObject+TTAdditions.m
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "NSManagedObject+TTAdditions.h"

@implementation NSManagedObject (TTAdditions)

+ (instancetype)createManagedObjectInContext:(NSManagedObjectContext *)context
{
    NSEntityDescription *entity = [NSEntityDescription entityForName:NSStringFromClass([self class]) inManagedObjectContext:context];
    return  [[[self class] alloc] initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end
