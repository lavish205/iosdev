//
//  MasterTableMasterViewController.h
//  MasterTable
//
//  Created by Developer on 11/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterTableDetailViewController;

@interface MasterTableMasterViewController : UITableViewController
{
    NSDictionary *dataTitles;
    NSArray *years;
}
@property (strong, nonatomic) MasterTableDetailViewController *detailViewController;
@property (nonatomic,retain) NSDictionary *dataTitles;
@property (nonatomic,retain) NSArray *years;
@end
