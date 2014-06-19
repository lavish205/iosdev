//
//  CurrentCityNameViewController.m
//  CurrentCityName
//
//  Created by Developer on 16/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "CurrentCityNameViewController.h"

@interface CurrentCityNameViewController ()

@end

@implementation CurrentCityNameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(IBAction)clickToGetLocation:(id)sender
{
    CurrentCityNameAppDelegate = [(CurrentCityNameAppDelegate *)[UIApplication sharedApplication]delegate];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_txtView release];
    [super dealloc];
}
@end
