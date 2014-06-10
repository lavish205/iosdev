//
//  SecondViewController.m
//  EmptyApp
//
//  Created by Developer on 10/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
    
    
    //create cgreact of positioning--
    CGRect frame2 = CGRectMake(20, 10, 280, 50);
    
    //create label view
    label = [[UILabel alloc]initWithFrame:frame2];
    label.textAlignment = UITextAlignmentCenter;
    label.font = [UIFont fontWithName:@"Tahoma" size:25];
    label.text = @"This is lable";
    label.backgroundColor = [UIColor blueColor];
    
    //create button view
    CGRect frame  = CGRectMake(20,100, 280, 50);
  

    button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [button setTitle:@"This is title" forState:UIControlStateNormal];
 button.backgroundColor = [UIColor redColor];
    button.frame=frame;
    
    //add the action handler  and set the current class as target
    
    [button addTarget:self action:@selector(buttonClicked) forControlEvents:UIControlEventTouchUpInside];
    
    //self.view.backgroundColor = [UIColor greenColor];
    
    
    
    //add views to the windows
    
    [self.view addSubview:label];
    [self.view addSubview:button];
     
}

//button action
-(void)buttonClicked
//-(IBAction)buttonClicked:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert Title" message:@"Button Clicked" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dealloc{
    [label release];
    [button release];
    [super dealloc];
}
@end
