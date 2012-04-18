//
//  Schedule.h
//  ChooseClasses
//
//  Created by Jack on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "ClassInfo.h"

@interface Schedule : UITableViewController
{
    NSString *addedClassName;
    int currentIndex;
    
}

@property (nonatomic, strong) NSString *addedClassName;
@property (nonatomic, strong) NSMutableArray *classesList;
@property (nonatomic, assign) int currentIndex;


@end
