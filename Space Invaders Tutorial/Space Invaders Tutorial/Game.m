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

-(void)MonsterMoveDown{
    
    Monster1.center = CGPointMake(Monster1.center.x,  Monster1.center.y + 5);
    Monster2.center = CGPointMake(Monster2.center.x,  Monster2.center.y + 5);
    Monster3.center = CGPointMake(Monster3.center.x,  Monster3.center.y + 5);
    Monster4.center = CGPointMake(Monster4.center.x,  Monster4.center.y + 5);
    Monster5.center = CGPointMake(Monster5.center.x,  Monster5.center.y + 5);
    Monster6.center = CGPointMake(Monster6.center.x,  Monster6.center.y + 5);
    Monster7.center = CGPointMake(Monster7.center.x,  Monster7.center.y + 5);
    Monster8.center = CGPointMake(Monster8.center.x,  Monster8.center.y + 5);
    Monster9.center = CGPointMake(Monster9.center.x,  Monster9.center.y + 5);
    Monster10.center = CGPointMake(Monster10.center.x,  Monster10.center.y + 5);
}

-(void)MonsterKilled{
    
    
    MonstersKilled = MonstersKilled + 1;
    BulletsOnScreen = 0;
    Bullet.hidden = YES;
    BulletMovement = 0;
    Bullet.center = CGPointMake(262, 626);
    
    
}

-(void)Collision {
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster1.frame)) && (Monster1Hit == NO)){
        
        Monster1Hit = YES;
        Monster1.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster2.frame)) && (Monster2Hit == NO)){
        
        Monster2Hit = YES;
        Monster2.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster3.frame)) && (Monster3Hit == NO)){
        
        Monster3Hit = YES;
        Monster3.hidden = YES;
        [self MonsterKilled];
        
    }
    
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster4.frame)) && (Monster4Hit == NO)){
        
        Monster4Hit = YES;
        Monster4.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster5.frame)) && (Monster5Hit == NO)){
        
        Monster5Hit = YES;
        Monster5.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster6.frame)) && (Monster6Hit == NO)){
        
        Monster6Hit = YES;
        Monster6.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster7.frame)) && (Monster7Hit == NO)){
        
        Monster7Hit = YES;
        Monster7.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster8.frame)) && (Monster8Hit == NO)){
        
        Monster8Hit = YES;
        Monster8.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster9.frame)) && (Monster9Hit == NO)){
        
        Monster9Hit = YES;
        Monster9.hidden = YES;
        [self MonsterKilled];
        
    }
    
    if ((CGRectIntersectsRect(Bullet.frame, Monster10.frame)) && (Monster10Hit == NO)){
        
        Monster10Hit = YES;
        Monster10.hidden = YES;
        [self MonsterKilled];
        
    }
    
}

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
    
    [self Collision];
    
    Ship.center = CGPointMake(Ship.center.x + ShipMovement, Ship.center.y);
    Bullet.center = CGPointMake(Bullet.center.x, Bullet.center.y - BulletMovement);
    Monster1.center = CGPointMake(Monster1.center.x + MonsterMovement, Monster1.center.y);
    Monster2.center = CGPointMake(Monster2.center.x + MonsterMovement, Monster2.center.y);
    Monster3.center = CGPointMake(Monster3.center.x + MonsterMovement, Monster3.center.y);
    Monster4.center = CGPointMake(Monster4.center.x + MonsterMovement, Monster4.center.y);
    Monster5.center = CGPointMake(Monster5.center.x + MonsterMovement, Monster5.center.y);
    Monster6.center = CGPointMake(Monster6.center.x + MonsterMovement, Monster6.center.y);
    Monster7.center = CGPointMake(Monster7.center.x + MonsterMovement, Monster7.center.y);
    Monster8.center = CGPointMake(Monster8.center.x + MonsterMovement, Monster8.center.y);
    Monster9.center = CGPointMake(Monster9.center.x + MonsterMovement, Monster9.center.y);
    Monster10.center = CGPointMake(Monster10.center.x + MonsterMovement, Monster10.center.y);
    
    if (Bullet.center.y < 0){
        Bullet.hidden = YES;
        BulletsOnScreen = 0;
        BulletMovement = 0;
    }
    
    if ((Monster1.center.x < 6) && (Monster1Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster2.center.x < 6) && (Monster2Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster3.center.x < 6) && (Monster3Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster4.center.x < 6) && (Monster4Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster5.center.x < 6) && (Monster5Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster6.center.x < 6) && (Monster6Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster7.center.x < 6) && (Monster7Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster8.center.x < 6) && (Monster8Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster9.center.x < 6) && (Monster9Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster10.center.x < 6) && (Monster10Hit == NO)){
        
        MonsterMovement = 5;
        [self MonsterMoveDown];
    }
        
    else if ((Monster1.center.x > 336) && (Monster1Hit == NO)){
            
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster1.center.x > 336) && (Monster1Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster2.center.x > 336) && (Monster2Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster3.center.x > 336) && (Monster3Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster4.center.x > 336) && (Monster4Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster5.center.x > 336) && (Monster5Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster6.center.x > 336) && (Monster6Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster7.center.x > 336) && (Monster7Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster8.center.x > 336) && (Monster8Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster9.center.x > 336) && (Monster9Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    else if ((Monster10.center.x > 336) && (Monster10Hit == NO)){
        
        MonsterMovement = -5;
        [self MonsterMoveDown];
        
    }
    
    
    
}

-(IBAction)Start:(id)sender{
    
    Start.hidden = YES;
    Exit.hidden = YES;
    Shoot.hidden = NO;
    
    MovementTimer = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Movement) userInfo:nil repeats:YES];
    
    Monster1.hidden = NO;
    Monster2.hidden = NO;
    Monster3.hidden = NO;
    Monster4.hidden = NO;
    Monster5.hidden = NO;
    Monster6.hidden = NO;
    Monster7.hidden = NO;
    Monster8.hidden = NO;
    Monster9.hidden = NO;
    Monster10.hidden = NO;
}

- (void)viewDidLoad {
    
    Monster1Hit = NO;
    Monster2Hit = NO;
    Monster3Hit = NO;
    Monster4Hit = NO;
    Monster5Hit = NO;
    Monster6Hit = NO;
    Monster7Hit = NO;
    Monster8Hit = NO;
    Monster9Hit = NO;
    Monster10Hit = NO;
    
    Monster1.hidden = YES;
    Monster2.hidden = YES;
    Monster3.hidden = YES;
    Monster4.hidden = YES;
    Monster5.hidden = YES;
    Monster6.hidden = YES;
    Monster7.hidden = YES;
    Monster8.hidden = YES;
    Monster9.hidden = YES;
    Monster10.hidden = YES;
    
    MonsterMovement = 5;
    
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
