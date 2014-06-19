//
//  CurrentCityNameViewController.h
//  CurrentCityName
//
//  Created by Developer on 16/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrentCityNameViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextView *txtView;

-(IBAction)clickToGetLocation:(id)sender;
@end
