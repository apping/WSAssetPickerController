//
//  ALAssetsLibrary+Default.m
//  PhotoBook
//
//  Created by Lucas on 2013-05-14.
//  Copyright (c) 2013 Apping AB. All rights reserved.
//

#import "ALAssetsLibrary+Default.h"

@implementation ALAssetsLibrary (Default)

+ (ALAssetsLibrary *)defaultLibrary {
    static ALAssetsLibrary *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[ALAssetsLibrary alloc] init];
    });
    
    return instance;
}

@end
