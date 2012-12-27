//
//  ListViewController.h
//  KTdemo
//
//  Created by kk on 12-12-27.
//  Copyright (c) 2012年 kk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UITableViewController
{

}
@property (nonatomic) NSInteger count;

@property (nonatomic, retain) NSArray *arrayOriginal;
@property (nonatomic, retain) NSMutableArray *arForTable;

-(void)miniMizeThisRows:(NSArray*)ar;
@end
