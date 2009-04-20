//
//  moo2AppDelegate.m
//  moo2
//
//  Created by ceritium on 19/04/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "moo2AppDelegate.h"
#import "moo2ViewController.h"

@implementation moo2AppDelegate

@synthesize window;
@synthesize viewController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
