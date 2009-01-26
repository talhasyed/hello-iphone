//
//  Developer.m
//  Developer
//
//  Created by Talha Syed on 26/01/09.
//  Copyright 2009 RyeHigh. All rights reserved.
//

#import "Developer.h"


@implementation Developer
@synthesize name, description;

-(id)initWithName: (NSString *)n description:(NSString *)desc {
	self.name = n;
	self.description = desc;
	return self;
}

@end
