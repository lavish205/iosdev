//
//  WebServicesViewController.h
//  WebServices
//
//  Created by Developer on 13/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebServicesViewController : UIViewController
<NSURLConnectionDataDelegate>
{
    IBOutlet UITextField *txtAmount;
    NSMutableData   *webData;
    NSURLConnection *conn;
    NSString *matchingElement;
}
@property (nonatomic,retain) UITextField *txtAmount;

-(IBAction)buttonClicked:(id)sender;

@end
