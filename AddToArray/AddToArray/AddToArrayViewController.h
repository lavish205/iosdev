//
//  AddToArrayViewController.h
//  AddToArray
//
//  Created by Developer on 17/06/14.
//  Copyright (c) 2014 Lavish Aggarwal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddToArrayViewController : UIViewController
-(IBAction)addToArray:(id)sender;
-(IBAction)showTable:(id)sender;
@property (retain, nonatomic) IBOutlet UITextField *txtField;
- (IBAction)didEditing:(id)sender;
@property (nonatomic,retain) NSArray *array;
- (IBAction)clearArray:(id)sender;
@end
