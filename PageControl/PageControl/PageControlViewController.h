//
//  PageControlViewController.h
//  PageControl
//
//  Created by Developer on 04/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageControlViewController : UIViewController
{
    UIImageView *tempImageView, *bgImageView;
int prevPage;

}
@property (retain, nonatomic) IBOutlet UIImageView *imageView1;
@property (retain, nonatomic) IBOutlet UIImageView *imageView2;
@property (retain, nonatomic) IBOutlet UIPageControl *pageControl;
@end

