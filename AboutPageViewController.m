//
//  AboutPageViewController.m
//  Developer
//
//  Created by Talha Syed on 28/01/09.
//  Copyright 2009 RyeHigh. All rights reserved.
//

#import "AboutPageViewController.h"

@implementation AboutPageViewController


// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
		self.title = @"About";
    }
    return self;
}

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    // [super viewDidLoad];
	
	// self.view.backgroundColor = [UIColor whiteColor];	// use the table view background color
	
	appName.text = @"Developers, Developers, Developers, YEAAAAAH!!!";
	copyright.text = @"Kaboose Inc";
	
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction)dismissAction:(id)sender
{
	[self.navigationController dismissModalViewControllerAnimated:YES];
}


@end
