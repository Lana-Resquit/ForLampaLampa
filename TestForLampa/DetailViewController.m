//
//  DetailViewController.m
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
    }
}

- (void)configureView {
    if (self.detailItem) {
        self.taskTitle.text = self.detailItem.title;
        self.taskSummary.text = self.detailItem.summary;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self configureView];
}

@end
