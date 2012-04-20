//
//  Modifications.m
//  ChooseClasses
//
//  Created by Kevin Mcdonald on 4/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Modifications.h"
#import "ClassInfo.h"
#import "Course.h"

@implementation Modifications


@synthesize index, txt_building, txt_roomNumber, txt_courseName;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    //comment
    // Configure the cell...
    ClassInfo *c = [ClassInfo sharedArrayManager];
    if ([c.classesList count] > 0){
        //cell.textLabel.text = [classesList objectAtIndex:indexPath.row];
        Course *course = [[Course alloc] init];
        course = [c.classesList objectAtIndex:index];
        
        txt_courseName.text = course.name;
        txt_building.text = course.building;
        txt_roomNumber.text = course.roomNumber;
        
    }
    
    [super viewDidLoad];
}


- (void)viewDidUnload
{
    [self setTxt_courseName:nil];
    [self setTxt_building:nil];
    [self setTxt_roomNumber:nil];
   
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)click_apply:(id)sender {
//    ClassInfo *c = [ClassInfo sharedArrayManager];
//    Course *course = [[Course alloc] init];
//    course = [c.classesList objectAtIndex:index];
//    course.name = txt_courseName.text;
//    course.building = txt_building.text;
//    course.roomNumber = txt_roomNumber.text;
}

- (IBAction)apply_click:(id)sender {
    ClassInfo *c = [ClassInfo sharedArrayManager];
        Course *course = [[Course alloc] init];
        course = [c.classesList objectAtIndex:index];
        course.name = txt_courseName.text;
        course.building = txt_building.text;
        course.roomNumber = txt_roomNumber.text;
}

- (IBAction)remove_click:(id)sender {
    ClassInfo *c = [ClassInfo sharedArrayManager];
    Course *course = [[Course alloc] init];
    [c.classesList removeObjectAtIndex:index];
    
}


@end
