//
//  MJSViewController.h
//  Age of Laika
//
//  Created by Michael Stromme on 2/24/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MJSViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *ageText;
@property (strong, nonatomic) IBOutlet UILabel *humanAgeLabel;
- (IBAction)convertYears:(UIButton *)sender;



@end
