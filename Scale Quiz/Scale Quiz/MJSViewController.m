//
//  MJSViewController.m
//  Scale Quiz
//
//  Created by Michael Stromme on 3/18/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "MJSViewController.h"
#import "KeyData.h"

@interface MJSViewController ()

@end

@implementation MJSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    /* The class method users defined in the CCUserData class returns an NSArray. We set the property users equal to the return value. */
    self.keys = [KeyData keys];
    /* Print out the users array to the console */
    NSLog(@"%@", self.keys);
    
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// show random question (key) from dictionary
- (IBAction)showQuestion:(UIButton *)sender {
    
    
    self.lblQuestion.text = @"What is the parent major scale of A mixolydian?";
}

// get value for key for question displayed


// update result label with Correct or Incorrect after clicking on note button




@end
