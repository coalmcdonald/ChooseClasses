//
//  ClassInfo.m
//  ChooseClasses
//
//  Created by Kevin Mcdonald on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ClassInfo.h"

@implementation ClassInfo

@synthesize classesList;

#pragma mark Singleton Methods
+ (id)sharedArrayManager {
    static id sharedArrayManager = nil;
    
    if (sharedArrayManager == nil) {
        sharedArrayManager = [[self alloc] init];
    }
    return sharedArrayManager;
}

- (id) init {
    if (self = [super init]) {
        classesList = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 2; i++){
          //  [classesList addObject:[NSNumber numberWithInt:2]];
        }
    }
    
    return self;
}


@end

