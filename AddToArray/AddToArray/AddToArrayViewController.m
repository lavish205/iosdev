//
//  AddToArrayViewController.m
//  AddToArray
//
//  Created by Developer on 17/06/14.
//  Copyright (c) 2014 Lavish Aggarwal. All rights reserved.
//

#import "AddToArrayViewController.h"
#import "SecondViewController.h"
@interface AddToArrayViewController ()

@end

@implementation AddToArrayViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.array = [[NSArray alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)addToArray:(id)sender
{
    if(![self.txtField.text  isEqual: @""])
    {
        self.array = [self.array arrayByAddingObject:self.txtField.text];
    }
    else
    {
        

    }
    self.txtField.text = @"";
    NSLog(@"%@",self.array);
    
}
-(IBAction)showTable:(id)sender
{
    SecondViewController *sec = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    sec.secondViewArray=self.array;
    NSLog(@"%@",sec.secondViewArray);
    
    [self.navigationController pushViewController:sec animated:YES];
    
}
- (void)dealloc {
    [_txtField release];
    [super dealloc];
}
- (IBAction)didEditing:(id)sender {
    [sender resignFirstResponder];
}
- (IBAction)clearArray:(id)sender {
    self.array = [[NSArray alloc]init];
}
@end
