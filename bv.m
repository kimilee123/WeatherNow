//
//  bv.m
//  DEMO_GDK
//
//  Created by kk on 12-12-25.
//  Copyright (c) 2012年 kk. All rights reserved.
//

#import "bv.h"

@implementation bv

@synthesize delegate = _delegate;

- (IBAction)onOne:(id)sender {
    NSLog(@"one");
}

- (IBAction)onTwo:(id)sender {
    NSLog(@"two");
}

- (IBAction)onThree:(id)sender {
    NSLog(@"three");
}

- (IBAction)onFour:(id)sender {
    NSLog(@"four");
}

- (IBAction)onMainButton:(id)sender {
    
    NSLog(@"111");
    if ([self.delegate respondsToSelector:@selector(mainButtonWasPressed:)]) {
        [self.delegate mainButtonWasPressed:self];
    }
}

@end
