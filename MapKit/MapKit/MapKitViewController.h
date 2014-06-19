//
//  MapKitViewController.h
//  MapKit
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
@interface MapKitViewController : UIViewController<MKMapViewDelegate,CLLocationManagerDelegate>

{
    MKUserLocation *loc;
    MKMapView *_myMapView;
}
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
- (IBAction)zoomIn:(id)sender;

- (IBAction)changeMapType:(id)sender;

@end
