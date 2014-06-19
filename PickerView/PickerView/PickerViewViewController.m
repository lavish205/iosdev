//
//  PickerViewViewController.m
//  PickerView
//
//  Created by Developer on 15/06/14.
//  Copyright (c) 2014 Developer. All rights reserved.
//

#import "PickerViewViewController.h"
#import "CustomObject.h"
@interface PickerViewViewController ()

@end

@implementation PickerViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.dictArray = [[NSMutableArray alloc]init];
	// Do any additional setup after loading the view, typically from a nib.
    self.array = [[NSArray alloc]initWithObjects:@"Red",@"Blue",@"Green", nil];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"symbol" ofType:@"json"];
    NSData *content = [NSData dataWithContentsOfFile:path];
    NSLog(@"%@",content);
    
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:content options:kNilOptions error:NULL];
    for(NSDictionary *dict in jsonArray)
    {
        CustomObject *object = [[CustomObject alloc]init];
        object.pctchange = [dict objectForKey:@"pctchange"];
        [self.dictArray addObject:object];
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// returns the # of rows in each component..
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.dictArray count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row   forComponent:(NSInteger)component

{
    CustomObject *object = [self.dictArray objectAtIndex:row];
    return [object pctchange];
}



@end
