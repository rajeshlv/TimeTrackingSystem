//
//  NSFileManager+TTDirectories.h
//  TimeTrackingSystem
//
//  Created by Govind on 20/05/14.
//  Copyright (c) 2014 Experion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSFileManager (TTDirectories)

+ (NSURL *)applicationDocumentsDirectory;
+ (NSURL *)appLibraryDirectory;

@end
