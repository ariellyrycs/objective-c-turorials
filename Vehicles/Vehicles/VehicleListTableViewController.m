//
//  MasterViewController.m
//  Vehicles
//
//  Created by Transferred on 9/8/13.
//  Copyright (c) 2013 Designated Nerd Software. All rights reserved.
//

#import "VehicleListTableViewController.h"

#import "VehicleDetailViewController.h"
#import "Vehicle.h"
#import "Car.h"
#import "Motorcycle.h"
#import "truck.h"
#import "VehicleList.h"

@interface VehicleListTableViewController ()
@end

@implementation VehicleListTableViewController

#pragma mark - View Lifecycle
- (void)awakeFromNib
{
    [super awakeFromNib];
    
    //Set the title of the View Controller, which will display in the Navigation bar.
    self.title = @"Vehicles";
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Table View Data Source
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [[VehicleList sharedInstance] vehicles].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    Vehicle *vehicle = [[VehicleList sharedInstance] vehicles][indexPath.row];
    cell.textLabel.text = [vehicle vehicleTitleString];
    return cell;
}

#pragma mark - Segue handling
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"showDetail"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Vehicle *selectedVehicle = [[VehicleList sharedInstance] vehicles][indexPath.row];
        [[segue destinationViewController] setDetailVehicle:selectedVehicle];
    }
}
@end
