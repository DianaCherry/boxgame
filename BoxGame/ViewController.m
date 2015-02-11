//
//  ViewController.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "ViewController.h"
#import "MapView.h"
#import "DockerView.h"
#import "BoxesView.h"

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
    [super viewDidLoad];
    
    MapView *view = [[MapView alloc]initWithFrame:CGRectMake(10, 30, 730, 980)];
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    
    UILabel *exitLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];

    [exitLabel setTextColor:[UIColor blackColor]];
    [exitLabel setBackgroundColor:[UIColor redColor]];
    [exitLabel setText:@"Exit"];
    [exitLabel setFont:[UIFont fontWithName: @"Marker Felt" size: 40.0f]];
    [view addSubview:exitLabel];

    DockerView *dockerView = [[DockerView alloc] initWithFrame:CGRectMake(550, 850, 100, 100)];
    dockerView.alpha = 1.0;
    dockerView.layer.cornerRadius = 50;
    dockerView.backgroundColor = [UIColor greenColor];
    [view addSubview:dockerView];
    
    UILabel *entryLabel = [[UILabel alloc] initWithFrame:CGRectMake(430, 930, 300, 50)];
    
    [entryLabel setTextColor:[UIColor blackColor]];
    [entryLabel setBackgroundColor:[UIColor redColor]];
    [entryLabel setText:@"Entry"];
    [entryLabel setFont:[UIFont fontWithName: @"Marker Felt" size: 40.0f]];
    [view addSubview:entryLabel];
    
    /*
     UIViewController *controller = [[UIViewController alloc]init];
     BoxesView *box = [[BoxesView alloc]init];
     self.boxesView = [[BoxesView alloc] init];
     [self.boxesView drawBox:box];
     [controller.view addSubview:self.boxesView];
     */
    
    NSString *errorDesc = nil;
    NSPropertyListFormat format;
    NSString *plistPath;
    NSString *rootPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0];
    
    plistPath = [rootPath stringByAppendingPathComponent:@"Maps.plist"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:plistPath]) {
        plistPath = [[NSBundle mainBundle] pathForResource:@"Maps" ofType:@"plist"];
    }
    NSData *plistXML = [[NSFileManager defaultManager] contentsAtPath:plistPath];
    NSDictionary *temp = (NSDictionary *)[NSPropertyListSerialization
                                          propertyListWithData:plistXML
                                          options:NSPropertyListMutableContainersAndLeaves
                                          format:&format
                                          error:&errorDesc];
    
    NSArray *pListArray = [[NSArray alloc] initWithContentsOfFile:plistPath];
    
    for (NSArray *array in pListArray) {
        NSLog(@"x: %@", [array objectAtIndex:0]);
        NSLog(@"y: %@", [array objectAtIndex:1]);
        
        BoxesView *boxesView = [[BoxesView alloc] initWithFrame:CGRectMake([[array objectAtIndex:0] floatValue],[[array objectAtIndex:1] floatValue],80,80)];
        boxesView.backgroundColor = [UIColor yellowColor];
        [view addSubview:boxesView];
    }
    
    if (!temp) {
        NSLog(@"Error reading plist: %@, format: %d", errorDesc, format);
    }
}
@end
