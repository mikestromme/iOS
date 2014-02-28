//
//  MBFViewController.m
//  Man's Best Friend
//
//  Created by Michael Stromme on 2/25/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "MBFViewController.h"
#import "MBFDog.h"

@interface MBFViewController ()

@end

@implementation MBFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // create object
    MBFDog *myDog = [[MBFDog alloc] init];
    
    // set up properties
    myDog.name = @"Emma";
    myDog.breed = @"Dachshund";
    myDog.age = 10;
    
    //int dogYears = [myDog ageInDogYearsFromAge:myDog.age];
    //NSLog(@"%i",dogYears);
    
    myDog.image = [UIImage imageNamed:@"IMG_0111.jpg"];
    
    self.myImageView.image = myDog.image;
    self.nameLabel.text = myDog.name;
    self.breedLabel.text = myDog.breed;
    
    MBFDog *secondDog = [[MBFDog alloc] init];
    secondDog.name = @"Maggie";
    secondDog.breed = @"Dachshund";
    secondDog.image = [UIImage imageNamed:@"IMG_3881.jpg"];
    
    self.myDogs = [[NSMutableArray alloc] init];
    [self.myDogs addObject:myDog];
    [self.myDogs addObject:secondDog];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The code that is executed when our barButtonItem is pressed.
- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender
{
    int numberOfDogs = [self.myDogs count];
    int randomIndex = arc4random() % numberOfDogs; // Finds a random number between 0 and our numberOfDogs - 1.  In our case either 0, 1, 2, 3, 4
    
    // First test if the currendIndex equals the randomIndex and if the currentIndex is 0.
    if (self.currentIndex == randomIndex && self.currentIndex == 0){
        randomIndex ++;
    }
    // Next test if the current index equals the random index.
    else if (self.currentIndex == randomIndex){
        randomIndex --;
    }
    
    /* Update your current index to the new random index */
    self.currentIndex = randomIndex;
    
    MBFDog *randomDog = [self.myDogs objectAtIndex:randomIndex];// Gets a randomDog from our arrayOfDogs
    
    // Set our UI elements to match the randomDog's properties
    // This is either done reguarly below or through animation!
    
    // REGULAR
    
    //    self.myImageView.image = randomDog.image;
    //    self.breedLabel.text = randomDog.breed;
    //    self.nameLabel.text = randomDog.name;
    
    [UIView transitionWithView:self.view duration:1.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        self.myImageView.image = randomDog.image;
        self.breedLabel.text = randomDog.breed;
        self.nameLabel.text = randomDog.name;
    } completion:^(BOOL finished) {
        
    }];
    
    // Changing the title on our UIBarButtonItem
    sender.title = @"And Another";
}

@end
