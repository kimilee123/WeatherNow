//
//  MainViewController.m
//  DEMO_GDK
//
//  Created by kk on 12-12-24.
//  Copyright (c) 2012年 kk. All rights reserved.
//

#import "MainViewController.h"
#import "utility.h"
#import "bv.h"
#import "ListViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    rsb = [[RNSwipeBar alloc]initWithMainView:self.view];
    [rsb setDelegate:self];
    [rsb setPadding:20];
    //UIView *brv = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 100)];
  //  UIImageView *im = [[UIImageView alloc]initWithFrame:brv.frame];
   // [im setImage:[UIImage imageNamed:@"button_bg.png"]];
        bv *brv = [[[NSBundle mainBundle] loadNibNamed:@"bv" owner:self options:nil] lastObject];
  
    [brv setDelegate:self];
    [rsb setBarView:brv];
    [self.view addSubview:rsb];
    
	// Do any additional setup after loading the view.
    
    UIViewController * v = [[UIViewController alloc]init];
   
    UIViewController * c = [[UIViewController alloc]init];
    [c.view setBackgroundColor:[UIColor whiteColor]];
   
    UIViewController *l = [[UIViewController alloc]init];
    
//    im1 = (UIImageView*)[utility RadiusImage:im1];
//    im2 = (UIImageView*)[utility RadiusImage:im2];
//
//    im3= (UIImageView*)[utility RadiusImage:im3];
//    im4 = (UIImageView*)[utility RadiusImage:im4];
    [v.view setFrame:CGRectMake(0, 0, 320, 400)];
    [l.view setFrame:CGRectMake(0, 0, 320, 400)];
    [c.view setFrame:CGRectMake(0, 0, 320, 400)];
    [v.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"blackGround.png"]]];
    [c.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"blackGround.png"]]];
    [l.view setBackgroundColor:[UIColor scrollViewTexturedBackgroundColor]];
    ListViewController * listView = [[ListViewController alloc]init];
    
    UINavigationController * nav = [[UINavigationController alloc]initWithRootViewController:listView];
    
    [self setCenterViewController:nav];
    [self setLeftViewController:v];
    [self setRightViewController:l];
    self.swipeDelegate = self;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)mainButtonWasPressed:(id)sender
{
    [rsb toggle];
}
- (void)swipeController:(RNSwipeViewController *)swipeController willShowController:(UIViewController *)controller {
    NSLog(@"will show");
}
- (void)swipeController:(RNSwipeViewController *)swipeController didShowController:(UIViewController *)controller {
    NSLog(@"did show");
}
@end