//
//  MasterDetailMasterViewController.h
//  MasterDetail
//
//  Created by Developer on 10/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MasterDetailDetailViewController;

@interface MasterDetailMasterViewController : UITableViewController
{
    NSMutableArray *listofMovies;
}
@property (strong, nonatomic) MasterDetailDetailViewController *detailViewController;

@end
