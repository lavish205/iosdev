//
//  EmailsViewController.h
//  Emails
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EmailsViewController : UIViewController
{
    IBOutlet UITextField *to;
    IBOutlet UITextField *subject;
    IBOutlet UITextView *body;
}
@property (retain, nonatomic) IBOutlet UITextField *to;
@property (retain, nonatomic) IBOutlet UITextField *subject;
@property (retain, nonatomic) IBOutlet UITextView *body;
- (IBAction)btnSend:(id)sender;
- (IBAction)didEditing:(id)sender;

@end
