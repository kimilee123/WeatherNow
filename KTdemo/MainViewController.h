//
//  MainViewController.h
//  DEMO_GDK
//
//  Created by kk on 12-12-24.
//  Copyright (c) 2012年 kk. All rights reserved.
//

#import "RNSwipeViewController.h"
#import "RNSwipeBar.h"
#import "bv.h"
@interface MainViewController : RNSwipeViewController<RNSwipeViewControllerDelegate,RNSwipeBarDelegate,RNBarViewDelegate>
{
    RNSwipeBar *rsb;
    UITableView *table ; 
    
}

@end
