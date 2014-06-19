//
//  AnimationViewController.h
//  Animation
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AnimationViewController : UIViewController
{
    IBOutlet UIImageView *imageView;
    IBOutlet UISlider *slider;
    CGPoint delta;
    NSTimer *timer;
    float ballRadius;
    CGPoint translation;
    float angle;
}
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (retain, nonatomic) IBOutlet UISlider *slider;
-(IBAction)sliderMoved:(id)sender;  
@end
