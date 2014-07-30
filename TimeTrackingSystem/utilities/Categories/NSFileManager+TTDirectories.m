//
//  NSFileManager+TTDirectories.m
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import "NSFileManager+TTDirectories.h"

@implementation NSFileManager (TTDirectories)


+ (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


+ (NSURL *)appLibraryDirectory
{
    return [[[self defaultManager] URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask] lastObject];
}

@end
