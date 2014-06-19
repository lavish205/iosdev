//
//  MapRouteViewController.m
//  MapRoute
//
//  Created by Developer on 16/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "MapRouteViewController.h"

@interface MapRouteViewController ()

@end

@implementation MapRouteViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
//    NSString *mapstr = [NSString stringWithFormat:@"hhttps://www.google.com"];
    NSURL *mapURL = [NSURL URLWithString:@"https://www.google.com/maps/dir/Noida,+Uttar+Pradesh,+India/New+Delhi,+Delhi,+India/@28.5653805,77.2299443,12z/data=!3m1!4b1!4m13!4m12!1m5!1m1!1s0x390ce5a43173357b:0x37ffce30c87cc03f!2m2!1d77.3910265!2d28.5355161!1m5!1m1!1s0x390ce2b0274e8957:0xe930677da8ed4418!2m2!1d77.2060241!2d28.6108127"];
    NSURLRequest *mapReq= [NSURLRequest requestWithURL:mapURL];
    [webView loadRequest:mapReq];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [webView release];
    [super dealloc];
}
@end
