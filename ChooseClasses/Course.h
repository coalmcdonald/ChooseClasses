//
//  Course.h
//  ChooseClasses
//
//  Created by Kevin Mcdonald on 3/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Course : NSObject{
    NSString *name;
    NSString *building;
    NSString *roomNumber;
    NSMutableArray *daysOfWeek;
    
    int hours;
    int minutes;
    int courseNumber;
    
}

@property (nonatomic, strong) NSString *name, *building, *roomNumber;
@property (nonatomic, strong) NSMutableArray *daysOfWeek;
@property (nonatomic, assign) int hours, minutes, courseNumber;

@end
