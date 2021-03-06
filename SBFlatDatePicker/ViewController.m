//
//  ViewController.m
//  SBFlatDatePicker
//
//  Created by Solomon Bier on 2/19/15.
//  Copyright (c) 2015 Solomon Bier. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidAppear:(BOOL)animated
{
    //New view controller
    UIViewController *pickerViewController = [[UIViewController alloc] init];
    
    //Init the datePicker view and set self as delegate
    SBFlatDatePicker *datePicker = [[SBFlatDatePicker alloc] initWithFrame:self.view.bounds];
    [datePicker setDelegate:self];
    
    //OPTIONAL: Choose the background color
    [datePicker setBackgroundColor:[UIColor whiteColor]];
    
    //OPTIONAL - Choose Date Range (0 starts At Today. Non continous sets acceptable (use some enumartion for [indexSet addIndex:yourIndex];
    datePicker.dayRange = [NSMutableIndexSet indexSetWithIndexesInRange:NSMakeRange(0, 365)];
    
    
    //OPTIONAL - Choose Minute  Non continous sets acceptable (use some enumartion for [indexSet addIndex:yourIndex];
    datePicker.minuterange = [NSMutableIndexSet indexSet];
    [datePicker.minuterange addIndex:0];
    [datePicker.minuterange addIndex:15];
    [datePicker.minuterange addIndex:30];
    [datePicker.minuterange addIndex:45];
    
    //Customize date format
    datePicker.dayFormat = @"EEE MMM dd";
    
    
    
    //Set the data picker as view of the new view controller
    [pickerViewController setView:datePicker];
    
    //Present the view controller
    [self presentViewController:pickerViewController animated:YES completion:nil];
}

//Delegate
-(void)flatDatePicker:(SBFlatDatePicker *)datePicker saveDate:(NSDate *)date{
    NSLog(@"%@",[date description]);
}

@end
