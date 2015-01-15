//
//  MasterViewController.m
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "MasterViewController.h"
#import "DetailViewController.h"
#import "Task.h"
#import "TaskTableViewCell.h"
#import "TaskDataController.h"

@interface MasterViewController ()

@property (nonatomic, strong) TaskDataController *taskDataController;

@end

@implementation MasterViewController

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.taskDataController = [[TaskDataController alloc]init];
}

#pragma mark - Segues

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"ShowTaskDetails"]) {
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        Task *task =[self.taskDataController taskAtIndex:indexPath.row];
        [[segue destinationViewController] setDetailItem:task];
    }
}

#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self.taskDataController taskCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TaskTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    Task *task = [self.taskDataController taskAtIndex:indexPath.row];
    cell.taskTitle.text = task.title;
    cell.taskSummary.text = task.summary;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    return NO;
}


@end
