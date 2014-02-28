//
//  MBFViewController.h
//  Man's Best Friend
//
//  Created by Michael Stromme on 2/25/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MBFViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIImageView *myImageView;
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *breedLabel;
@property (strong, nonatomic) NSMutableArray *myDogs;
@property (nonatomic) int currentIndex;

- (IBAction)newDogBarButtonItemPressed:(UIBarButtonItem *)sender;

@end
