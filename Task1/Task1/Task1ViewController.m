//
//  Task1ViewController.m
//  Task1
//
//  Created by Developer on 13/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "Task1ViewController.h"

@interface Task1ViewController ()

@property (nonatomic, retain) NSMutableArray * arr1;
@property (nonatomic,retain) NSMutableArray *arr2;
@property (nonatomic,retain) NSMutableArray *arr3;
@property (nonatomic,retain) NSMutableArray *arr4;
//@property (nonatomic,retain) NSMutableArray *first;
@end

@implementation Task1ViewController
- (void)viewDidLoad
{
    //dictionary array
    
    
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc]init];
    NSArray *a1 = [[NSArray alloc]initWithObjects:@"a",@"b",@"c", nil];
    NSArray *a2 = [[NSArray alloc]initWithObjects:@"e",@"f",@"g", nil];
    
    dic1 =[NSDictionary dictionaryWithObjectsAndKeys:a1,@"a1",a2,@"a2", nil];
    for(id key in dic1)
        NSLog(@"%@-%@",key,[dic1 objectForKey:@"a2"]);
    
    
    //
   
    
    
//    self.first = [[NSMutableArray alloc] initWithCapacity: 5];
//    [self.first insertObject: [NSArray arrayWithObjects: @"ZCH14", @"ZSK14", @"ZWK14", @"LEJ14", @"HEJ14", nil] atIndex: 0];
//    [self.first insertObject: [NSArray arrayWithObjects: @"Corn", @"Soyabean", @"Wheat", @"Cattle", @"Lean Hogs", nil] atIndex: 1];

    
    self.arr1 = [[NSMutableArray alloc]init];
    [self.arr1 addObject:@"ZCH14"];
    [self.arr1 addObject:@"ZSK14"];
    [self.arr1 addObject:@"ZWK14"];
    [self.arr1 addObject:@"LEJ14"];
    [self.arr1 addObject:@"HEJ14"];
    
    self.arr2 = [[NSMutableArray alloc]init];
    [self.arr2 addObject:@"Corn"];
    [self.arr2 addObject:@"Soyabeans"];
    [self.arr2 addObject:@"Wheat"];
    [self.arr2 addObject:@"Cattle"];
    [self.arr2 addObject:@"Lean Hogs"];
    
    self.arr3 = [[NSMutableArray alloc]init];
    [self.arr3 addObject:@"455'6s"];
    [self.arr3 addObject:@"1387'2s"];
    [self.arr3 addObject:@"618'0s"];
    [self.arr3 addObject:@"142.40s"];
    [self.arr3 addObject:@"100.70s"];

    self.arr4 = [[NSMutableArray alloc]init];
    [self.arr4 addObject:@"+4'2"];
    [self.arr4 addObject:@"+12'2"];
    [self.arr4 addObject:@"+1'0"];
    [self.arr4 addObject:@"+1.75"];
    [self.arr4 addObject:@"-1.45"];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   // return [self.first count];
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"simpleTableIdentifier"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"simpleTableIdentifier"];

    }
    
    //dynamic lable
    CGRect frame = CGRectMake(170,0, 70, 20);
    UILabel *lable = [[UILabel alloc]initWithFrame:frame];
    lable.textColor = [UIColor blueColor];
    lable.font = [UIFont fontWithName:@"Helvetica" size:15];
    [cell.contentView addSubview:lable];
    
    lable.text = [self.arr3 objectAtIndex:indexPath.row];
    
    
    //dynamic lable 2
    CGRect frame2 = CGRectMake(170,20, 70, 20);
    UILabel *lable2 = [[UILabel alloc]initWithFrame:frame2];
    lable2.textColor = [UIColor greenColor];
    lable2.font = [UIFont fontWithName:@"Helvetica" size:13];
    [cell.contentView addSubview:lable2];
    lable2.text = [self.arr4 objectAtIndex:indexPath.row];
    
    //dynamic view 1
    CGRect frame3 = CGRectMake(230, 2  , 80, 38);
    UIImageView *view = [[UIImageView alloc]initWithFrame:frame3];
    view.image = [UIImage imageNamed:@"wl_up.png"];
    
    [cell.contentView addSubview:view];

    
    
    
    
    
    cell.textLabel.text =[self.arr1 objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.arr2 objectAtIndex:indexPath.row];
    cell.textLabel.textColor = [UIColor colorWithRed:0.3 green:0.3 blue:0.3 alpha:1];
    
    return cell;
    
    
    
}

-(IBAction)didEditing:(id)sender
{
    [sender resignFirstResponder];
}


- (void)dealloc {
   
    [super dealloc];
}
@end
