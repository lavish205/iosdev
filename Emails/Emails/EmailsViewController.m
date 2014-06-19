//
//  EmailsViewController.m
//  Emails
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "EmailsViewController.h"

@interface EmailsViewController ()

@end

@implementation EmailsViewController


-(void)sendEmailTo:(NSString *) toStr withSubject:(NSString *) subjectStr withBody:(NSString *) bodyStr{

    NSString *emailString = [[NSString alloc]initWithFormat:@"mailto:?to=%@&subject=%@&body=%@",[toStr stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],[subjectStr stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding],[bodyStr stringByAddingPercentEscapesUsingEncoding:NSASCIIStringEncoding]];
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:emailString]];
    [emailString release];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_to release];
    [_subject release];
    [_body release];
    [super dealloc];
}
- (IBAction)btnSend:(id)sender {
    [self sendEmailTo:to.text withSubject:subject.text withBody:body.text];
}

- (IBAction)didEditing:(id)sender {
    [sender resignFirstResponder];
}
@end
