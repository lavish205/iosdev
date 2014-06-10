//
//  EmptyAppViewController.h
//  EmptyApp
//
//  Created by Developer on 10/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface EmptyAppViewController : UIViewController
{
    SecondViewController *secondViewController;
}

-(IBAction)btnClicked:(id)sender;

@end
