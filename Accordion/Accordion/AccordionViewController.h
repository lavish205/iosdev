//
//  AccordionViewController.h
//  Accordion
//
//  Created by Developer on 16/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AccordionViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) NSArray *parentArray;
@property (nonatomic,retain) NSArray *childArray;
@property (nonatomic,retain) UITableView *tblView;
@property (nonatomic,retain) NSIndexPath *indexP;

@end
