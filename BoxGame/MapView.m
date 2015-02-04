//
//  MapView.m
//  BoxGame
//
//  Created by Diana Krasnozhenova on 12/23/14.
//  Copyright (c) 2014 Diana Krasnozhenova. All rights reserved.
//

#import "MapView.h"
#import "DockerView.h"
#import "BoxesView.h"

@implementation MapView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void) loadLevel {
    NSFileManager *fileManager = [[NSFileManager alloc] init];
    //NSURL *documentDirectoryURL = [[fileManager URLsForDocumentDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] objectAtIndex:0];
    
    // Turn the filename into a string safe for use in a URL
    NSString *safeString = [@"Boxes.plist" stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    // Create an array for the score
    NSMutableArray *array = [[NSMutableArray alloc] init];
    
    // Write this array to a URL
    //NSURL *arrayURL = [NSURL URLWithString:safeString relativeToURL:documentDirectoryURL];
    //[array writeToURL:arrayURL atomically:YES];
}

@end

