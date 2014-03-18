//
//  ViewController.m
//  Scale Quiz
//
//  Created by Michael Stromme on 6/2/13.
//  Copyright (c) 2013 mikestromme. All rights reserved.
//

#import "ViewController.h"


@implementation ViewController

// setup data model object
-(id) initWithNibName:( NSString *) nibNameOrNil bundle:( NSBundle *) nibBundleOrNil
{
    // Call the init method implemented by the superclass
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self) {
        // Create two arrays and make the pointers point to them
        questions = [[NSMutableArray alloc] init];
        answers = [[NSMutableArray alloc] init];
        
        // Add questions and answers to the arrays
        [questions addObject:@"What is the PMS of A Mixolydian?"];
        [answers addObject:@"D"];
        
        [questions addObject:@"What is the PMS of B Mixolydian?"];
        [answers addObject:@"E"];
        
        [questions addObject:@"What is the PMS of C Mixolydian?"];
        [answers addObject:@"F"];
        
        [questions addObject:@"What is the PMS of F Mixolydian?"];
        [answers addObject:@"A#"];
        
        [questions addObject:@"What is the PMS of G Mixolydian?"];
        [answers addObject:@"C"];

        [questions addObject:@"What is the PMS of D Mixolydian"];
        [answers addObject:@"G"];
        
        [questions addObject:@"What is the PMS of E Mixolydian"];
        [answers addObject:@"A"];
        
        [questions addObject:@"What is the PMS of A Lydian"];
        [answers addObject:@"E"];
        
        [questions addObject:@"What is the PMS of B Lydian"];
        [answers addObject:@"F#"];
        
        [questions addObject:@"What is the PMS of C Lydian"];
        [answers addObject:@"G"];
        
        [questions addObject:@"What is the PMS of D Lydian"];
        [answers addObject:@"A"];
        
        [questions addObject:@"What is the PMS of E Lydian"];
        [answers addObject:@"B"];
        
        [questions addObject:@"What is the PMS of F Lydian"];
        [answers addObject:@"C"];
        
        [questions addObject:@"What is the PMS of G Lydian"];
        [answers addObject:@"D"];
    }
    
    // Return the address of the new object
    return self;
    
}


// show question
- (IBAction)showQuestion:(UIButton *)sender
{
    
    // TODO: implement the randomizer below - it was tried but the answers didn't follow the random questions
    //int numberOfQuestions = [questions count];
    //int currentQuestion = arc4random() % numberOfQuestions;
    
    // Step to the next question
    currentQuestionIndex++;
    
    // Am I past the last question?
    if (currentQuestionIndex == [questions count]) {
        
    // Go back to the first question
    currentQuestionIndex = 0;
        
    }
    
    // Get the string at that index in the questions array
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
        
    // Log the string to the console
    NSLog(@"displaying question: %@", question);
    
    // Display the string in the question field
    [questionField setText:question];
    
    // Clear the answer field
    [answerField setText:@""];
}


- (IBAction)showResult:(UIButton *)sender
{
    
    // Clear the answer field
    [answerField setText:@""];
    
    NSString *selection = [sender titleForState:UIControlStateNormal];
    //NSLog (@"Digit pressed = %@", selection);
    
    
    //What is the answer to the current question
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    // NSLog (@"Answer = %@", answer);
    
    
    // Pass value of button and compare to currentQuestionIndex value
    if ([selection isEqualToString:(answer)]) {
        answerField.textColor = [UIColor greenColor];
        [answerField setText:@"Correct!"];
        
    } else {
        answerField.textColor = [UIColor redColor];
        [answerField setText:@"Incorrect, try again."];
    };
    
    // TODO: add animation code from stackoverflow
    /*
    aview.alpha = 1.0f;
    [UIView animateWithDuration:0.5f
                          delay:0.0f
                        options:UIViewAnimationOptionAutoreverse
                     animations:^ {
                         [UIView setAnimationRepeatCount:10.0f/2.0f];
                         aview.alpha = 0.0f;
                     } completion:^(BOOL finished) {
                         [aview removeFromSuperview]; 
                     }];*/
     
}


@end
