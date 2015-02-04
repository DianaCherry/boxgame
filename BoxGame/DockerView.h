//
//  DockerView.h
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DockerView : UIView {

    CGPoint position;

}
    - (void)drawDockerX:(NSUInteger)x andY: (NSUInteger)y;
    -(IBAction)start:(id)sender;


@end