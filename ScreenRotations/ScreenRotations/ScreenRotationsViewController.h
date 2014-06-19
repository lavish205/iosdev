//
//  ScreenRotationsViewController.h
//  ScreenRotations
//
//  Created by Developer on 11/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScreenRotationsViewController : UIViewController
{
    IBOutlet UIButton *btn;
}

@property(nonatomic,retain) UIButton *btn;
-(IBAction)btnClick:(id)sender;
@end
