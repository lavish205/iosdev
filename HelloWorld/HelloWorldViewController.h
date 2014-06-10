//
//  HelloWorldViewController.h
//  HelloWorld
//
//  Created by Developer on 04/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloWorldViewController : UIViewController
<UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textfield;
@property (weak, nonatomic) IBOutlet UIButton *clickbutton;
-(IBAction)clicktoalert:(id)sender;

@end
