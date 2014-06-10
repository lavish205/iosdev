//
//  DynamicViewsViewController.m
//  DynamicViews
//
//  Created by Developer on 04/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "DynamicViewsViewController.h"

@interface DynamicViewsViewController ()

@end

@implementation DynamicViewsViewController

-(void)loadView{
    //Create a UIView object
    UIView *view = [[UIView alloc]initWithFrame:[UIScreen mainScreen].applicationFrame];
    //set background color to light gray
    view.backgroundColor = [UIColor lightGrayColor];
    //create a lable view
    CGRect frame = CGRectMake(10,15,300,20);
    UILabel *lable = [[UILabel alloc]initWithFrame:frame];
    lable.textAlignment = UITextAlignmentCenter;
    lable.backgroundColor = [UIColor clearColor];
    lable.font = [UIFont fontWithName:@"Tahoma" size:20];
    lable.text = @"Coded lable :P";
    lable.tag = 1000;
    
    //create a button view
    frame = CGRectMake(10,70,300,50);
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = frame;
    [button setTitle:@"Click Me!" forState:UIControlStateNormal];
    button.backgroundColor = [UIColor clearColor];
    button.tag = 2000;
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:lable];
    [view addSubview:button];
    self.view = view;
    [lable release];
    [view release];
}
    //button click  event handler
-(IBAction)buttonClicked:(id)sender{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Title Here" message:@"Working Correctly" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    
    [alert show];
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

@end
