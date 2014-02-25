//
//  MJSViewController.m
//  Age of Laika
//
//  Created by Michael Stromme on 2/24/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "MJSViewController.h"

@interface MJSViewController ()

@end

@implementation MJSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertYears:(UIButton *)sender
{
    
    int dogsAge = [self.ageText.text integerValue];
    float humanAge = dogsAge * 7;
    self.humanAgeLabel.text = [NSString stringWithFormat:@"%f",humanAge];
    
    
}
@end
