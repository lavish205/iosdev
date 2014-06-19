//
//  Task2ViewController.h
//  Task2
//
//  Created by Developer on 14/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Task2ViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,retain)NSMutableArray *dictArray;
@end
