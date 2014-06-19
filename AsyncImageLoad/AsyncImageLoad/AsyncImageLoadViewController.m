//
//  AsyncImageLoadViewController.m
//  AsyncImageLoad
//
//  Created by Developer on 17/06/14.
//  Copyright (c) 2014 Lavish Aggarwal. All rights reserved.
//

#import "AsyncImageLoadViewController.h"

@interface AsyncImageLoadViewController ()

@end

@implementation AsyncImageLoadViewController

- (void)viewDidLoad
{
    self.array= [[NSArray alloc]initWithObjects:@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",@"b",@"c",@"d",@"e",@"f",@"g",nil];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.array count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"identifier"];
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"identifier"];
    }
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];

    
    
    //async part
    NSString *identifier = [NSString stringWithFormat:@"Cell%d" ,
                            indexPath.row];
    char const * s = [identifier  UTF8String];
    dispatch_queue_t queue = dispatch_queue_create(s,0);
    dispatch_async(queue, ^{
        NSString *url = @"https://wiki.videolan.org/images/thumb/User-group.svg/200px-User-group.svg.png";//http://i277.photobucket.com/albums/kk75/swells_bucket/Motorcycles/logo-bmw-100x100.png
        UIImage *img = nil;
        NSData *data = [[NSData alloc]initWithContentsOfURL:[NSURL URLWithString:url]];
        img= [[UIImage alloc]initWithData:data];
       [tableView reloadData];
        dispatch_async(dispatch_get_main_queue(), ^{
            cell.imageView.image = img;
            //[tableView reloadData];
        });
        //[tableView reloadData];
   
    });
   // [tableView reloadData];
        return cell;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
