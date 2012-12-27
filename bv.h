//
//  bv.h
//  DEMO_GDK
//
//  Created by kk on 12-12-25.
//  Copyright (c) 2012年 kk. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol RNBarViewDelegate

@required

- (void)mainButtonWasPressed:(id)sender;

@end
@interface bv : UIView
@property (strong) NSObject <RNBarViewDelegate> *delegate;
- (IBAction)onOne:(id)sender;
- (IBAction)onTwo:(id)sender;
- (IBAction)onThree:(id)sender;
- (IBAction)onFour:(id)sender;
- (IBAction)onMainButton:(id)sender;

@end
