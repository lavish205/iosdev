//
//  AccordionViewController.m
//  Accordion
//
//  Created by Developer on 16/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "AccordionViewController.h"

@interface AccordionViewController ()

@end

@implementation AccordionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    
	// Do any additional setup after loading the view, typically from a nib.
    
    self.parentArray = [[NSArray alloc]initWithObjects:@"p1",@"p2",@"p3",@"p4",@"p5", nil];

    self.childArray = [[NSArray alloc]initWithObjects:@"c1",@"c2",@"c3",@"c4",@"c5", nil];

    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.parentArray count];
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"simpleTableIdentifier"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"simpleTableIdentifier"];
        
    }
    
  
    cell.textLabel.text = [self.parentArray objectAtIndex:indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {

    

    self.indexP = indexPath;

   [tableView reloadData];
//    
    

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath*)indexPath
{
    if (indexPath.section == self.indexP.section) {
        if (indexPath.row == self.indexP.row) {
            return 110;
        }
    }
    return 44;
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
