//
//  AddClasses.h
//  ChooseClasses
//
//  Created by Jack on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AddClasses : UIViewController <UITextFieldDelegate>
{
    
}

@property (strong, nonatomic) IBOutlet UITextField *txt_building;
@property (strong, nonatomic) IBOutlet UITextField *txt_roomNumber;
@property (strong, nonatomic) IBOutlet UITextField *txt_enterClass;

@property (strong, nonatomic) IBOutlet UILabel *lbl_class;

- (IBAction)addClick:(id)sender;

@end
