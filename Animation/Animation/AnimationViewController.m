//
//  AnimationViewController.m
//  Animation
//
//  Created by Developer on 12/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "AnimationViewController.h"

@interface AnimationViewController ()

@end

@implementation AnimationViewController


-(void)onTimer
{
    [UIView animateWithDuration:slider.value
                          delay:0.0f options:UIViewAnimationOptionAllowUserInteraction |
     UIViewAnimationOptionCurveLinear
                     animations:^{
                         self.imageView.transform = CGAffineTransformMakeRotation(angle);
                     } completion:nil];
    angle += 0.02;
    if (angle>6.2857) angle = 0;
    self.imageView.center = CGPointMake(self.imageView.center.x + delta.x, self.imageView.center.y + delta.y);
    if (self.imageView.center.x > self.view.bounds.size.width - ballRadius || self.imageView.center.x < ballRadius)
        delta.x = -delta.x;
    if (self.imageView.center.y > self.view.bounds.size.height - ballRadius || self.imageView.center.y < ballRadius)
        delta.y = -delta.y;
    
}


- (void)viewDidLoad
{
    angle = 0;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    ballRadius = imageView.bounds.size.width/2;
    //[slider setSelected:YES];
    delta = CGPointMake(12.0, 4.0);
    translation = CGPointMake(0.0,0.0);
    timer = [NSTimer scheduledTimerWithTimeInterval:slider.value target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
    
}


-(IBAction)sliderMoved:(id)sender
{
    [timer invalidate];
    timer = [NSTimer scheduledTimerWithTimeInterval:slider.value target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageView release];
    [_slider release];
    [super dealloc];
}
@end
