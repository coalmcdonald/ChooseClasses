//
//  Modifications.h
//  ChooseClasses
//
//  Created by Kevin Mcdonald on 4/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Modifications : UIViewController{
  
    int *index;
}


- (IBAction)click_apply:(id)sender;
- (IBAction)apply_click:(id)sender;
- (IBAction)remove_click:(id)sender;

@property (nonatomic, assign) int *index;
@property (strong, nonatomic) IBOutlet UITextField *txt_courseName;
@property (strong, nonatomic) IBOutlet UITextField *txt_building;
@property (strong, nonatomic) IBOutlet UITextField *txt_roomNumber;

@end
