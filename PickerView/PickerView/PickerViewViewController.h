//
//  PickerViewViewController.h
//  PickerView
//
//  Created by Developer on 15/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PickerViewViewController : UIViewController
<UIPickerViewDataSource,UIPickerViewDelegate>
@property (nonatomic,retain) NSArray *array;
@property (nonatomic,retain) NSMutableArray *dictArray;
@end
