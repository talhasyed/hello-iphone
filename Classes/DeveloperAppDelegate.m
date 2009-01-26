//
//  DeveloperAppDelegate.m
//  Developer
//
//  Created by Talha Syed on 26/01/09.
//  Copyright RyeHigh 2009. All rights reserved.
//

#import "DeveloperAppDelegate.h"
#import "RootViewController.h"


@implementation DeveloperAppDelegate

@synthesize window;
@synthesize navigationController;
@synthesize developers;


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
