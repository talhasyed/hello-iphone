//
//  FruitAppDelegate.m
//  Fruit
//
//  Created by Talha Syed on 26/01/09.
//  Copyright RyeHigh 2009. All rights reserved.
//

#import "FruitAppDelegate.h"
#import "RootViewController.h"


@implementation FruitAppDelegate

@synthesize window;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
