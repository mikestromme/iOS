//
//  MBFDog.m
//  Man's Best Friend
//
//  Created by Michael Stromme on 2/25/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "MBFDog.h"

@implementation MBFDog

-(void)bark
{
    NSLog(@"Woof Woof!");
    
}

-(void)barkANumberOfTimes:(int)numbOfTimes
{
    for (int bark = 1; bark <= numbOfTimes; bark++){
        [self bark];
    }
}

-(void)changeBreedToWerewolf
{
    self.breed = @"Werewolf";
}

-(void)barkANumberOfTimes:(int)numberOfTimes loudly:(BOOL)isLoud
{
    if (!isLoud){
    
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"yip yip");
        }
    }
    else {
        for (int bark = 1; bark <= numberOfTimes; bark ++){
            NSLog(@"Ruff Ruff");
        }
    }
}

-(int)ageInDogYearsFromAge:(int)regularAge
{
    int newAge = regularAge * 7;
    return newAge;
}
    

@end
