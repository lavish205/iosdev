//
//  TableViewViewController.m
//  TableView
//
//  Created by Developer on 11/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "TableViewViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
@interface TableViewViewController ()

@end

@implementation TableViewViewController

NSMutableArray *listofMovies;


//--insert individual row into table--

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIndentifier = @"Cell";
    
    //--try to get a reusable cell--
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIndentifier];
    if(cell == NULL)
    {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIndentifier]autorelease];
    }

    
    //--set the text to display for cell--
NSString *cellValue = [listofMovies objectAtIndex:indexPath.row];
cell.textLabel.text = cellValue;
return cell;

}

//--set the number of wors in a table view--
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [listofMovies count];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    //—--initialize the array—--
    listofMovies = [[NSMutableArray alloc] init];
    //—--add items—--
    [listofMovies addObject:@"T1"];
    [listofMovies addObject:@"T2"];
    [listofMovies addObject:@"T4"];
    [listofMovies addObject:@"T5"];
    [listofMovies addObject:@"T17"];
    [listofMovies addObject:@"T1"];
    [listofMovies addObject:@"T1"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row==0)
    {
    SecondViewController * sView = [[SecondViewController alloc]initWithNibName:@"SecondViewController" bundle:nil];
    //[self.view addSubview:sView.view];
        [self.navigationController pushViewController:sView animated:YES];
    }
    else if (indexPath.row==1)
    {
        ThirdViewController * sView = [[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
        //[self.view addSubview:sView.view];
        [self.navigationController pushViewController:sView animated:YES];
    }
}
@end
