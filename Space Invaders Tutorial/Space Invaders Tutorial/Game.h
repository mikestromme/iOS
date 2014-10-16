//
//  Game.h
//  Space Invaders Tutorial
//
//  Created by Michael Stromme on 10/15/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import <UIKit/UIKit.h>

int ShipMovement;
int BulletMovement;
int BulletsOnScreen;

@interface Game : UIViewController
{
    
    IBOutlet UIButton *Start;
    IBOutlet UIButton *Exit;
    IBOutlet UIButton *Shoot;
    
    IBOutlet UIImageView *Ship;
    IBOutlet UIImageView *Bullet;
    
    NSTimer *MovementTimer;
    
}

-(IBAction)Start:(id)sender;
-(IBAction)Shoot:(id)sender;
-(void)Movement;

@end
