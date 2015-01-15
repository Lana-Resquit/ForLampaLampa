//
//  Task.m
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import "Task.h"

@implementation Task

-(id)initWithTitle:(NSString *)title andSummary:(NSString *)summary {
    self = [super init];
    if (self) {
        _title = title;
        _summary = summary;
        
        return self;
    }
    return nil;
}

@end
