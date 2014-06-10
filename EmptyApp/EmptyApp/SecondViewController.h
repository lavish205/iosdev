//
//  SecondViewController.h
//  EmptyApp
//
//  Created by Developer on 10/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController

{
    UILabel *label;
    UIButton *button;
}

@property (nonatomic,retain) UILabel *lable;
@property (nonatomic,retain) UIButton *button;

-(IBAction)buttonClicker:(id)sender;
@end

