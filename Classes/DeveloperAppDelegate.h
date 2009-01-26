//
//  DeveloperAppDelegate.h
//  Developer
//
//  Created by Talha Syed on 26/01/09.
//  Copyright RyeHigh 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DeveloperAppDelegate : NSObject <UIApplicationDelegate> {
    
	IBOutlet UIWindow *window;
	IBOutlet UINavigationController *navigationController;
}

@property (nonatomic, retain) UIWindow *window;
@property (nonatomic, retain) UINavigationController *navigationController;
@property (nonatomic, retain) NSMutableArray *developers;

@end

