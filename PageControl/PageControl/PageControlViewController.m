//
//  PageControlViewController.m
//  PageControl
//
//  Created by Developer on 04/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "PageControlViewController.h"

@interface PageControlViewController ()

@end

@implementation PageControlViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self.imageView1 setImage:[UIImage imageNamed:@"a.jpg"]];
    tempImageView = self.imageView2;
    //make first image view visible and and second hidden
    [self.imageView1 setHidden:NO];
    [self.imageView2 setHidden:YES];
    
    //add event handler for pagecontroler;
    [self.pageControl addTarget:self action:@selector(pageTurning:) forControlEvents:UIControlEventValueChanged];
    prevPage = 0;
    [super viewDidLoad];
    
}

    //When Page controler value is changed
-(void)pageTurning:(UIPageControl *)pageController{
    //get the page number you are turning to
    NSInteger nextPage = [pageController currentPage];
    switch (nextPage) {
        case 0:
            [tempImageView setImage:[UIImage imageNamed:@"a.jpg"]];
            break;
        case 1:
            [tempImageView setImage:[UIImage imageNamed:@"b.jpg"]];
            break;
        case 2:
            [tempImageView setImage:[UIImage imageNamed:@"c.jpg"]];
            break;
        case 3:
            [tempImageView setImage:[UIImage imageNamed:@"d.jpg"]];
            break;
            
        default:
            break;
    }
    
    //Switch the two image views
    if(tempImageView.tag == 0){
        tempImageView = self.imageView2;
    }
    else{
        tempImageView =self.imageView1;
        bgImageView = self.imageView2;
    }
    
    UIViewAnimationOptions transitionOption;
    if(nextPage > prevPage)
    {
        //if moving from left to right
        transitionOption = UIViewAnimationOptionTransitionFlipFromLeft;
    }
    else
        transitionOption = UIViewAnimationOptionTransitionFlipFromRight;
    [UIView transitionWithView:tempImageView duration:2.5 options:transitionOption animations:^{[tempImageView setHidden:YES];} completion:NULL];
    [UIView transitionWithView:bgImageView duration:2.5 options:transitionOption animations:^{[bgImageView setHidden:NO];} completion:NULL];
    
    prevPage = nextPage;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    [_imageView1 release];
    [_imageView2 release];
    [_pageControl release];
    [super dealloc];
}
@end
