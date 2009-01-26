//
//  RootViewController.h
//  Developer
//
//  Created by Talha Syed on 26/01/09.
//  Copyright RyeHigh 2009. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DeveloperViewController.h"

@interface RootViewController : UITableViewController {
	DeveloperViewController *developerView;
}

@property(nonatomic, retain) DeveloperViewController *developerView;

@end
