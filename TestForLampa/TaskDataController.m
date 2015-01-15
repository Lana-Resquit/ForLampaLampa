//
//  TaskDataController.m
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "TaskDataController.h"

@interface TaskDataController ()

@property (nonatomic, readonly) NSMutableArray *taskList;

-(void)initializeDefaultTask;

@end

@implementation TaskDataController

-(id)init {
    self = [super init];
    
    if (self) {
        _taskList = [[NSMutableArray alloc]init];
        [self initializeDefaultTask];
        return self;
    }
    return nil;
}

-(void)initializeDefaultTask {
    for (int i = 0; i<20; i++) {
        [self addTaskWhithTitle:[NSString stringWithFormat:@"Задача №%lu",self.taskCount +1] andSummary:[NSString stringWithFormat:@"Описание задачи №%lu",self.taskCount +1]];
    }
}

-(void)addTaskWhithTitle:(NSString *)title andSummary:(NSString *)summary {
    Task *newTask = [[Task alloc]initWithTitle:title andSummary:summary];
    [self.taskList addObject:newTask];
}

-(NSUInteger)taskCount {
    return [self.taskList count];
}

-(Task *)taskAtIndex:(NSUInteger)index {
    return [self.taskList objectAtIndex:index];
}

@end
