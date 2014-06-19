//
//  RestrictUserTextFieldViewController.m
//  RestrictUserTextField
//
//  Created by Developer on 15/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "RestrictUserTextFieldViewController.h"

@interface RestrictUserTextFieldViewController ()

@end
#define NUMERIC @"1234567890"
@implementation RestrictUserTextFieldViewController
-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSCharacterSet *unacceptedInput =nil;
    if(textField == self.phoneTextField)
    {
        unacceptedInput = [[NSCharacterSet characterSetWithCharactersInString:NUMERIC]invertedSet];
    }
    return ([[string componentsSeparatedByCharactersInSet:unacceptedInput]count]<=1);
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_phoneTextField release];
    [super dealloc];
}
@end
