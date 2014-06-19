//
//  ImageFromServerViewController.h
//  ImageFromServer
//
//  Created by Developer on 17/06/14.
//  Copyright (c) 2014 Lavish Aggarwal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageFromServerViewController : UIViewController
<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,retain)NSArray *array;
@property (nonatomic,retain) NSURLConnection *connection;
@end
