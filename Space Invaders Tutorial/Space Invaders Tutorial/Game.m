//
//  Game.m
//  Space Invaders Tutorial
//
//  Created by Michael Stromme on 10/15/14.
//  Copyright (c) 2014 mikestromme. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)Shoot:(id)sender{
    
    if (BulletsOnScreen == 0) {
        Bullet.hidden = NO;
        Bullet.center = CGPointMake(Ship.center.x, 504);
        BulletsOnScreen = BulletsOnScreen + 1;
        BulletMovement = 20;
    }
        
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.view];
    
    if(point.x < 160) {
        ShipMovement = -7;
    }
    else {
        ShipMovement = 7;
    }
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    ShipMovement = 0;
}

-(void)Movement{
    
    Ship.center = CGPointMake(Ship.center.x + ShipMovement, Ship.center.y);
    Bullet.center = CGPointMake(Bullet.center.x, Bullet.center.y - BulletMovement);
    
    if (Bullet.center.y < 0){
        Bullet.hidden = YES;
        BulletsOnScreen = 0;
        BulletMovement = 0;
    }
    
    
    
}

-(IBAction)Start:(id)sender{
    
    Start.hidden = YES;
    Exit.hidden = YES;
    Shoot.hidden = NO;
    
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
}

- (void)viewDidLoad {
    
    Bullet.hidden = YES;
    Shoot.hidden = YES;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
