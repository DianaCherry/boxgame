//
//  MapView.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "MapView.h"

@implementation MapView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    
    CGContextRef box1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(box1, 3.0);
    CGContextSetStrokeColorWithColor(box1, [UIColor blackColor].CGColor);
    CGRect rectangle1 = CGRectMake(60,60,80,80);
    CGContextAddRect(box1, rectangle1);
    CGContextStrokePath(box1);
    CGContextSetFillColorWithColor(box1, [UIColor yellowColor].CGColor);
    CGContextFillRect(box1, rectangle1);
    
    CGContextRef box2 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(box2, 3.0);
    CGContextSetStrokeColorWithColor(box2, [UIColor blackColor].CGColor);
    CGRect rectangle2 = CGRectMake(200,200,80,80);
    CGContextAddRect(box2, rectangle2);
    CGContextStrokePath(box2);
    CGContextSetFillColorWithColor(box2, [UIColor yellowColor].CGColor);
    CGContextFillRect(box2, rectangle2);
    
    CGContextRef box3 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(box3, 3.0);
    CGContextSetStrokeColorWithColor(box3, [UIColor blackColor].CGColor);
    CGRect rectangle3 = CGRectMake(300,200,80,80);
    CGContextAddRect(box3, rectangle3);
    CGContextStrokePath(box3);
    CGContextSetFillColorWithColor(box3, [UIColor yellowColor].CGColor);
    CGContextFillRect(box3, rectangle3);
    
    CGContextRef box4 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(box4, 3.0);
    CGContextSetStrokeColorWithColor(box4, [UIColor blackColor].CGColor);
    CGRect rectangle4 = CGRectMake(120,500,80,80);
    CGContextAddRect(box4, rectangle4);
    CGContextStrokePath(box4);
    CGContextSetFillColorWithColor(box4, [UIColor yellowColor].CGColor);
    CGContextFillRect(box4, rectangle4);
    
    CGContextRef box5 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(box5, 3.0);
    CGContextSetStrokeColorWithColor(box5, [UIColor blackColor].CGColor);
    CGRect rectangle5 = CGRectMake(500,300,80,80);
    CGContextAddRect(box5, rectangle5);
    CGContextStrokePath(box5);
    CGContextSetFillColorWithColor(box5, [UIColor yellowColor].CGColor);
    CGContextFillRect(box5, rectangle5);

}




@end

