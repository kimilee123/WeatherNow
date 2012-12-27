//
//  utility.m
//  DEMO_GDK
//
//  Created by kk on 12-12-25.
//  Copyright (c) 2012年 kk. All rights reserved.
//

#import "utility.h"
#import <QuartzCore/QuartzCore.h>

@implementation utility
+(UIView *) RadiusImage:(UIView *) originView
{
    
 
    originView.layer.cornerRadius = CORNER_RADIUS;
    originView.layer.masksToBounds = YES;
    return originView;
}

@end
