//
//  Task.h
//  TestForLampa
//
//  Created by Kristy on 15.01.15.
//  Copyright (c) 2015 Kristyna. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Task : NSObject

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *summary;

-(id)initWithTitle:(NSString *)title andSummary:(NSString *)summary;

@end
