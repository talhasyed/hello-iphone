//
//  Developer.h
//  Developer
//
//  Created by Talha Syed on 26/01/09.
//  Copyright 2009 RyeHigh. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Developer : NSObject {
	NSString *name;
	NSString *description;
}

@property(nonatomic, copy) NSString *name;
@property(nonatomic, copy) NSString *description;

-(id) initWithName:(NSString *)n description:(NSString *)desc;

@end
