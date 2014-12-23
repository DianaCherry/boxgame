//
//  ViewController.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "ViewController.h"
#import "MapView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void) viewWillAppear:(BOOL)animated
{
    //Simple border on the main view
    
    //Or a simple rectangle to place at x,h within the main view
}


- (void)viewDidLoad
{
    MapView *view = [[MapView alloc]initWithFrame:CGRectMake(10, 30, 730, 980)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    UILabel *exitLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];

    [exitLabel setTextColor:[UIColor blackColor]];
    [exitLabel setBackgroundColor:[UIColor redColor]];
    [exitLabel setText:@"Exit"];
    [exitLabel setFont:[UIFont fontWithName: @"Marker Felt" size: 40.0f]];
    [view addSubview:exitLabel];

    
    UILabel *entryLabel = [[UILabel alloc] initWithFrame:CGRectMake(430, 930, 300, 50)];
    
    [entryLabel setTextColor:[UIColor blackColor]];
    [entryLabel setBackgroundColor:[UIColor redColor]];
    [entryLabel setText:@"Entry"];
    [entryLabel setFont:[UIFont fontWithName: @"Marker Felt" size: 40.0f]];
    [view addSubview:entryLabel];
    
    
    MapView *circle = [[MapView alloc] initWithFrame:CGRectMake(580, 880, 50, 50)];
    circle.alpha = 0.5;
    circle.layer.cornerRadius = 50;
    circle.backgroundColor = [UIColor greenColor];
    [view addSubview:circle];



    
    [super viewDidLoad];
}


@end
