//
//  CirclesView.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "CirclesView.h"
#import <SpriteKit/SpriteKit.h>
#import <SpriteKit/SKAction.h>
#import <QuartzCore/QuartzCore.h>

@implementation CirclesView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {

    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(context, 5.0);
//    CGContextSetRGBStrokeColor(context, 255.0, 0.0, 0.0, 1.0);
//    CGContextStrokeRect(context, rect);
//    CGContextRef contextRef = UIGraphicsGetCurrentContext();
//    CGContextSetLineWidth(contextRef, 1.0);
//    CGContextSetRGBFillColor(context, 0.0, 0.0, 255.0, 1.0);
//    CGContextSetRGBStrokeColor(context, 255.0, 0.0, 0.0, 0.0);
//    
//    CGContextFillEllipseInRect(contextRef, rect);
//    CGContextStrokeEllipseInRect(contextRef, rect);
    
    
    //CGRectMake(30, 140, 80, 80)
    //CGRect borderRect = CGRectMake(0.0, 0.0, 60.0, 60.0);

//    CGContextSetRGBFillColor(context, 0, 0, 255, 1);
//    CGContextFillEllipseInRect(context, CGRectMake(30, 140, 80, 80));
}

- (void) circlesMove {

    
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
