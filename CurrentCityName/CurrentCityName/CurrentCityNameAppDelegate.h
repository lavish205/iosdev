//
//  CurrentCityNameAppDelegate.h
//  CurrentCityName
//
//  Created by Developer on 16/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
@class CurrentCityNameViewController;

@interface CurrentCityNameAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CurrentCityNameViewController *viewController;

@property (nonatomic,retain)CLLocationManager *manager;

@property float latitude;

@property float longitude;

@end
