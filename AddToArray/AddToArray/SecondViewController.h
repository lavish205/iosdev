//
//  SecondViewController.h
//  AddToArray
//
//  Created by Developer on 17/06/14.
//  Copyright (c) 2014 Lavish Aggarwal. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AddToArrayViewController.h"
@interface SecondViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,retain) NSArray *secondViewArray;
@end
