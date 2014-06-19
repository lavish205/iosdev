//
//  HelloWorldViewController.m
//  HelloWorld
//
//  Created by Developer on 04/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "HelloWorldViewController.h"

@interface HelloWorldViewController ()

@end

@implementation HelloWorldViewController

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
-(void) actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%d",buttonIndex);
}
-(IBAction)clicktoalert:(id)sender{
//    NSString * value = self.textfield.text;
//    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:[NSString stringWithFormat:@"Hello, %@",value] message:@"Welcone to First App" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:@"Option",nil];
//    [alert show];
    UIActionSheet * action = [[UIActionSheet alloc]initWithTitle:@"Here is Title" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"Option 1",@"Option2", nil];
    [action showInView:self.view];
}
@end;
