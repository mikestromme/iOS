//
//  MJSData.m
//  Scale Quiz
//
//  Created by Michael Stromme on 4/7/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "MJSData.h"

@implementation MJSData

+ (NSArray *)allKeyData
{
    NSMutableArray *keyInformation = [@[] mutableCopy];
    
    NSDictionary *keyOfA_Dictionary = @{KEY_NAME : @"A"};
    [allKeyData addObject:keyOfA_Dictionary];
    
    return keyInformation;
    
}
@end
