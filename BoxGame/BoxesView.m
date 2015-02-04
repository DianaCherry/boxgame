//
//  BoxesView.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "BoxesView.h"

@implementation BoxesView

// TODO: To make this method accept arguments (position)
- (void)drawBox:(CGRect)rect {
    CGContextRef box1 = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(box1, 3.0);
    CGContextSetStrokeColorWithColor(box1, [UIColor blackColor].CGColor);
    CGRect rectangle1 = CGRectMake(60,60,80,80);
    CGContextAddRect(box1, rectangle1);
    CGContextStrokePath(box1);
    CGContextSetFillColorWithColor(box1, [UIColor yellowColor].CGColor);
    CGContextFillRect(box1, rectangle1);
}


@end
