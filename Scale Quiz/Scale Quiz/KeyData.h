//
//  KeyData.h
//  Scale Quiz
//
//  Created by Michael Stromme on 4/14/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import <Foundation/Foundation.h>


/* Each time the computer program comes across USER_NAME, USER_EMAIL and etc. it will replace it with the string next to the name. This adds consistency to our code since we'll be able to use USER_NAME instead of having to write out @"username over and over" */
#define KEY_NAME @"keyname"
#define KEY_DORIAN_PMS @"pms_name"
#define KEY_NUMBER_OF_SHARPS @"number_of_sharps"
#define KEY_STAFF_PICTURE @"staff_picture"


@interface KeyData : NSObject


/* A class method named keys that returns an NSArray */
+(NSArray *)keys;

@end
