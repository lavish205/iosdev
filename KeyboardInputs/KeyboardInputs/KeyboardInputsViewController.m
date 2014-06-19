//
//  KeyboardInputsViewController.m
//  KeyboardInputs
//
//  Created by Developer on 11/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "KeyboardInputsViewController.h"

@interface KeyboardInputsViewController ()

@end

@implementation KeyboardInputsViewController

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
-(IBAction)doneEditing:(id)sender
{
    [sender resignFirstResponder];
}


@end
