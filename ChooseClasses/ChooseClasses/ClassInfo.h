//
//  ClassInfo.h
//  ChooseClasses
//
//  Created by Kevin Mcdonald on 3/21/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <foundation/Foundation.h>

@interface ClassInfo : NSObject {
    NSMutableArray *classesList;
}


@property (nonatomic, retain) NSMutableArray *classesList;

+ (id)sharedArrayManager;

@end
