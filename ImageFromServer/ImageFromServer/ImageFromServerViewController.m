//
//  ImageFromServerViewController.m
//  ImageFromServer
//
//  Created by Developer on 17/06/14.
//  Copyright (c) 2014 Lavish Aggarwal. All rights reserved.
//

#import "ImageFromServerViewController.h"

@interface ImageFromServerViewController ()

@end

@implementation ImageFromServerViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    //creating a url to the remote resource
    NSURL *url = [NSURL URLWithString:@"http://iosdevelopertips.com/images/logo-iphone-dev-tips.png"];
    
    //creating UIImage from NSDATA object that hold the content of remote image
    
    UIImage *image = [UIImage imageWithData:[NSData dataWithContentsOfURL:url]];
   
    NSString *docDir = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    
    
    NSString *filePath = [NSString stringWithFormat:@"%@/test.jpg",docDir];
    
    //saving as jpeg
    NSData *data2 = [NSData dataWithData:UIImageJPEGRepresentation(image, 1.0f)];
    
    [data2 writeToFile:filePath atomically:YES];
    
    //[self.view addSubview:[[UIImageView alloc] initWithImage:image]];
    
    
    
    
    self.array = [[NSArray alloc]initWithObjects:@"a",@"b",@"c",@"d",@"b",@"c",@"d",@"b",@"c",@"d",@"b",@"c",@"d", nil];
    
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [self.array count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
   
    cell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://iosdevelopertips.com/images/logo-iphone-dev-tips.png"]]];
    return cell;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
