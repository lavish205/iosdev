//
//  ApplicationSettingsViewController.h
//  ApplicationSettings
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ApplicationSettingsViewController : UIViewController
{
    IBOutlet UITextField *login;
    IBOutlet UITextField *password;
    IBOutlet UIPickerView *favouriteColor;
    
}
@property (retain, nonatomic) IBOutlet UITextField *login;

@property (retain, nonatomic) IBOutlet UITextField *password;
@property (retain, nonatomic) IBOutlet UIPickerView *favouriteColor;


-(IBAction)loadSettings:(id)sender;
-(IBAction)saveSettings:(id)sender;

-(IBAction)keyBoard:(id)sender;

@end
