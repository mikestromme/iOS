//
//  MJSViewController.m
//  Scale Quiz
//
//  Created by Michael Stromme on 3/18/14.
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
    
    // create dictionary object
    NSMutableDictionary *myDictionary = [[NSMutableDictionary alloc] init];
    
    // create an instance of dictionary object
    [myDictionary setObject:@"E" forKey:@"What is the parent major scale of the A Mixolydian mode"];
    
    
    
    
    
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
