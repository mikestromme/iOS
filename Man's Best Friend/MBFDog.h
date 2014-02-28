//
//  MBFDog.h
//  Man's Best Friend
//
//  Created by Michael Stromme on 2/25/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MBFDog : NSObject

// declare properites
@property (nonatomic) int age;
@property (nonatomic, strong) NSString *breed;
@property (strong, nonatomic) UIImage *image;
@property (nonatomic, strong) NSString *name;

// declare methods
-(void)bark;
-(void)barkANumberOfTimes:(int)numbOfTimes;
-(void)changeBreedToWerewolf;
-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud;
-(int)ageInDogYearsFromAge:(int)regularAge;

@end
