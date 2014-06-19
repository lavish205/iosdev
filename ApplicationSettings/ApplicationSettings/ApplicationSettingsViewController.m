//
//  ApplicationSettingsViewController.m
//  ApplicationSettings
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "ApplicationSettingsViewController.h"

@interface ApplicationSettingsViewController ()

@end

@implementation ApplicationSettingsViewController
{
    NSMutableArray *colors;
    NSString *favouriteColorSelected;

}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    colors = [[NSMutableArray alloc]initWithObjects:@"Red",@"Green",@"Blue", nil];
    
    
    
}

//--number of components in a picker view--

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *) thePickerView
{
    return 1;
}
//--number of items(rows) in a picker view--
-(NSInteger)pickerView:(UIPickerView *)thePickerViewnumberofRowsInComponent:(NSInteger)component
{
    return [colors count];
}

//---populating the Picker view---
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row
            forComponent:(NSInteger)component { return [colors objectAtIndex:row];
}
//---the item selected by the user---
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row
       inComponent:(NSInteger)component { favouriteColorSelected = [colors objectAtIndex:row];
}

-(IBAction)keyBoard:(id)sender
{
    [sender resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_login release];
    [_password release];
    [_favouriteColor release];
    [super dealloc];
}
@end
