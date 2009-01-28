//
//  AboutPageViewController.h
//  Developer
//
//  Created by Talha Syed on 28/01/09.
//  Copyright 2009 RyeHigh. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AboutPageViewController : UIViewController {
	IBOutlet UILabel *appName;
	IBOutlet UILabel *copyright;
}

- (IBAction)dismissAction:(id)sender;

@end
