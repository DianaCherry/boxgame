//
//  DockerView.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "DockerView.h"
#import <SpriteKit/SKAction.h>
#import "MapView.h"

@implementation DockerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawDockerX:(NSUInteger)x andY: (NSUInteger)y {
    
    //From ViewController copy
    DockerView *circle = [[DockerView alloc] initWithFrame:CGRectMake(x, y, 100, 100)];
    circle.alpha = 0.5;
    circle.layer.cornerRadius = 100;
    circle.backgroundColor = [UIColor greenColor];
    }

- (void) dockerMove {
    
    
    SKAction *up      = [SKAction moveByX:0 y: 100 duration:1];
    SKAction *down    = [SKAction moveByX:0 y:-100 duration:1];
    SKAction *action1 = [SKAction repeatActionForever:[SKAction sequence:@[up, down]]];
    
    SKAction *action2 = [SKAction moveByX:200 y:0 duration:5];
    
    SKAction *group = [SKAction group:@[action1, action2]];
}

- (IBAction)start:(id)sender {
    position = CGPointMake (580, 880);
}

@end
