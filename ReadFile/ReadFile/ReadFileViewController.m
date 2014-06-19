//
//  ReadFileViewController.m
//  ReadFile
//
//  Created by Developer on 14/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "ReadFileViewController.h"

@interface ReadFileViewController ()

@end

@implementation ReadFileViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* path = [[NSBundle mainBundle] pathForResource:@"symbol"
                                                     ofType:@"json"];
    NSString* content = [NSString stringWithContentsOfFile:path
                                                  encoding:NSUTF8StringEncoding
                                                     error:NULL];
    NSLog(@"%@",content);
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
