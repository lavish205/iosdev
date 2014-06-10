//
//  EmptyAppViewController.m
//  EmptyApp
//
//  Created by Developer on 10/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "EmptyAppViewController.h"

@interface EmptyAppViewController ()

@end

@implementation EmptyAppViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnClicked:(id)sender{
    
    
        secondViewController = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    
//    [self.view addSubview:secondViewController.view];
    [self.navigationController pushViewController:secondViewController animated:YES];
}

-(void)dealloc
{
    [secondViewController release];
    [super dealloc];
}
@end
