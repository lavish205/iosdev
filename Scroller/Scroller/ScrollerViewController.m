//
//  ScrollerViewController.m
//  Scroller
//
//  Created by Developer on 11/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "ScrollerViewController.h"

@interface ScrollerViewController ()

@end

@implementation ScrollerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //scrollView.frame = CGRectMake(0,0,320,460);
   
}


-(void)viewDidAppear:(BOOL)animated

{
 [self.scrollView setContentSize:CGSizeMake(320,713)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc
{
    [scrollView release];
    [super dealloc];
}
@end
