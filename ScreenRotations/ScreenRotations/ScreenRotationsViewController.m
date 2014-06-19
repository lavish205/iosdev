//
//  ScreenRotationsViewController.m
//  ScreenRotations
//
//  Created by Developer on 11/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "ScreenRotationsViewController.h"

@interface ScreenRotationsViewController ()

@end

@implementation ScreenRotationsViewController
@synthesize btn;

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
//-(void)positionViews{
//    UIInterfaceOrientation destOrientation = self.interfaceOrientation;			
//    if(destOrientation == UIInterfaceOrientationPortrait || destOrientation==UIInterfaceOrientationPortraitUpsideDown)
//    {
//        btn.frame = CGRectMake(20,20,233,37);
//    }
//    else{
//        btn.frame = CGRectMake(227,243,233,37);
//    }
//}


//-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
//    [self positionViews];
//}



-(IBAction)btnClick:(id)sender
{
    [[UIDevice currentDevice] setOrientation:UIInterfaceOrientationMaskLandscapeLeft];
}


-(void)dealloc
{
    [btn release];
    [super dealloc];
}
@end
