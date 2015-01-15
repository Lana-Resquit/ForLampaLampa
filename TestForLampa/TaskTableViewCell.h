//
//  TaskTableViewCell.h
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *taskTitle;
@property (weak, nonatomic) IBOutlet UILabel *taskSummary;

@end
