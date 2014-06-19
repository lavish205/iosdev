//
//  WriteFileViewController.h
//  WriteFile
//
//  Created by Developer on 14/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WriteFileViewController : UIViewController
-(NSString *)documentsPath;
-(NSString *)readFromFile:(NSString *)filePath;
-(void)writeToFile:(NSString *) text withFileName:(NSString *)filePath;

@end
