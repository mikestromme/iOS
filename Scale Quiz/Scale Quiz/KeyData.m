//
//  KeyData.m
//  Scale Quiz
//
//  Created by Michael Stromme on 4/14/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "KeyData.h"

@implementation KeyData


+(NSArray *)keys
{
    /* To create an NSDictionary we use the literal syntax with curly braces. Remember that NSDictionaries are created in key-value pairs.*/
    NSDictionary *keyOfA = @{KEY_NAME : @"a", KEY_DORIAN_PMS : @"g", KEY_NUMBER_OF_SHARPS : @3, KEY_STAFF_PICTURE : [UIImage imageNamed:@"key_of_a.jpeg"]};
    
  
    
    /* To create an NSArray we use the literal syntax with brackets. Remember that NSArrays contain objects. Using literal syntax we do not need to add nil at the end! */
    NSArray *keyArray = @[keyOfA];
    
    /* Return an NSArray of NSDictionaries from this class method */
    return keyArray;
}


@end
