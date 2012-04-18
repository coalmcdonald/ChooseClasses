//
//  AddClasses.m
//  ChooseClasses
//
//  Created by Jack on 3/20/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "AddClasses.h"
#import "Schedule.h"
#import "ClassInfo.h"
#import "Course.h"


@implementation AddClasses
@synthesize txt_building;
@synthesize txt_roomNumber;
@synthesize txt_enterClass;
@synthesize lbl_class;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

//- (void)loadView
//{
//    // If you create your views manually, you MUST override this method and use it to create your views.
//    // If you use Interface Builder to create your views, then you must NOT override this method.
//}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTxt_enterClass:nil];
    [self setLbl_class:nil];
    [self setTxt_building:nil];
    [self setTxt_roomNumber:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}



- (IBAction)addClick:(id)sender {
        
    Course *course = [[Course alloc] init];
    course.name = txt_enterClass.text;
    course.building = txt_building.text;
    course.roomNumber = txt_roomNumber.text;
    
    ClassInfo *ci = [ClassInfo sharedArrayManager];
    [ci.classesList addObject:course];
    NSLog(@"added class");   
    
    if (ci.classesList == nil)
        NSLog(@"the list is empty");
   
    
}

// this method is called whenever the text field is called and the user returns from it (regardless
// of the title of the 'return' button
- (BOOL) textFieldShouldReturn:(UITextField *) theTextField {
    
    // check to see if the text field is the one in our ViewController
 //   if (theTextField == self.textField){
        // by relinquishing the first responder role, the keyboard will no longer stay visible
        [theTextField resignFirstResponder];
   // }
    
    return YES;
}

@end
