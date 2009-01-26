//
//  FruitAppDelegate.h
//  Fruit
//
//  Created by Talha Syed on 26/01/09.
//  Copyright RyeHigh 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FruitAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

