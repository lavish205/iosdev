//
//  WriteFileViewController.m
//  WriteFile
//
//  Created by Developer on 14/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "WriteFileViewController.h"

@interface WriteFileViewController ()

@end
@implementation WriteFileViewController

//--finds path to the application documents folder--
-(NSString *)documentsPath
{
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDir = [paths objectAtIndex:0];
    return documentsDir;
}

//--write content into a specified file path--
-(void)writeToFile:(NSString *)text withFileName:(NSString *)filePath
{
    NSMutableArray *array = [[NSMutableArray alloc]init];
    [array addObject:text];
    [array writeToFile:filePath atomically:YES];
//    [array release];
}


//--read content from specified file path--
-(NSString *)readFromFile:(NSString *)filePath
{
    //check if file exists
    if([[NSFileManager defaultManager] fileExistsAtPath:filePath])
    {
        NSArray *array = [[NSArray alloc]initWithContentsOfFile:filePath];
        NSString *data = [NSString stringWithFormat:@"%@",[array objectAtIndex:0]];
        return data;
    }
    else
    {
        return nil;
    }
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //--formulate filename--
    NSString *fileName = [[self documentsPath] stringByAppendingPathComponent:@"data.txt"];
    //--writing something to file--
    
    [self writeToFile:@"this content is added to file at runtime" withFileName:fileName];
    
    //--read it --
    
    NSString *fileContent = [self readFromFile:fileName];
    
    //--display the content in the debugger console window--
    NSLog(@"%@",fileContent);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
