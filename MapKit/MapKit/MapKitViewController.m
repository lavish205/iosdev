//
//  MapKitViewController.m
//  MapKit
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "MapKitViewController.h"
#import <CoreLocation/CoreLocation.h>
@interface MapKitViewController ()

@end

@implementation MapKitViewController
- (void)viewDidLoad
{
//    CLLocation *locA = [[CLLocation alloc] initWithLatitude:28.63 longitude:77.71];
//    
//    CLLocation *locB = [[CLLocation alloc] initWithLatitude:18.56 longitude:77.34];
//    
//    CLLocationDistance distance = [locA distanceFromLocation:locB];
//    NSLog(@"%f",distance/1000);
    
//
    
    
  
    
    
//

    
    MKPointAnnotation *aa=[[MKPointAnnotation alloc]init];
    CLLocationCoordinate2D coordinates;
    coordinates.latitude=28.281520;
    coordinates.longitude= 77.580806;
    aa.coordinate= coordinates;
    aa.title=@"E-Comm Street, Noida";
    
    
    [_mapView addAnnotation:aa];
     _mapView.showsUserLocation = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.    
    
}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)zoomIn:(id)sender
{
    MKUserLocation *userLocation = _mapView.userLocation;
    MKCoordinateRegion region =
    MKCoordinateRegionMakeWithDistance (
                                        userLocation.location.coordinate, 28000, 28000);
    
   
    [_mapView setRegion:region animated:NO];
}


- (IBAction)changeMapType:(id)sender
{
    if (_mapView.mapType == MKMapTypeStandard)
        _mapView.mapType = MKMapTypeHybrid;
    else
        _mapView.mapType = MKMapTypeStandard;
}


- (void)dealloc {
        [super dealloc];
}
@end
