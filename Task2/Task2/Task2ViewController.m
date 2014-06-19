//
//  Task2ViewController.m
//  Task2
//
//  Created by Developer on 14/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "Task2ViewController.h"
#import "CustomObject.h"
@interface Task2ViewController ()

@end

@implementation Task2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.dictArray = [[NSMutableArray alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"symbol" ofType:@"json"];
    //NSString *content = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:NULL];
    NSData *content = [NSData dataWithContentsOfFile:path];
   // NSLog(@"%@",content);
    
    //--json parsing into dictionary--
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:content options:kNilOptions error:NULL];
    //NSLog(@"%@",jsonArray);
    
    
    //--json for loop---
    
    for(NSDictionary *dict in jsonArray)
   {
      
       CustomObject * object = [[CustomObject alloc]init];
       object.last = [dict valueForKey:@"last"];
       object.change = [dict valueForKey:@"change"];
       object.pctchange = [dict valueForKey:@"pctchange"];
       object.value = [dict valueForKey:@"value"];
       object.type = [dict valueForKey:@"type"];
       [self.dictArray addObject:object];
    }
    
    NSLog(@"%@",self.dictArray);
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dictArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"simpleTableIdentifier"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"simpleTableIdentifier"];
        
    }
    //at each index of dictionary there is an object so will will add each object into a custom object
    
    CustomObject *object  = [self.dictArray objectAtIndex:indexPath.row];
    
    //now we have object with its properties
    //we will show each property where ever it is required
    cell.textLabel.text = object.last;
    cell.detailTextLabel.text = object.pctchange;

    return cell;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
