//
//  TaskDataController.h
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Task.h"
@interface TaskDataController : NSObject

-(NSUInteger)taskCount;
-(Task *)taskAtIndex:(NSUInteger)index;
-(void)addTaskWhithTitle:(NSString *)title andSummary:(NSString *)summary;

@end
