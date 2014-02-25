//
//  ViewController.h
//  Scale Quiz
//
//  Created by Michael Stromme on 6/2/13.
//  Copyright (c) 2013 mikestromme. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int currentQuestionIndex;
    
    //The model objects
    NSMutableArray *questions;
    NSMutableArray *answers;
    
    //The view objects
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    //IBOutlet UILabel *resultField;
    
}

- (IBAction)showQuestion:(id)sender;
//- (IBAction)showAnswer:(id)sender;

@end
