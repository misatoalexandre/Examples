//
//  UserInterfaceFunViewController.m
//  Examples
//
//  Created by Misato Tina Alexandre on 7/5/13.
//  Copyright (c) 2013 Misato Tina Alexandre. All rights reserved.
//

#import "UserInterfaceFunViewController.h"

@interface UserInterfaceFunViewController ()

@end

@implementation UserInterfaceFunViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}
//Tell both text fields to give up first responder status if they have it. It is perfectly safe to call resignFirestResponder on a control that is not the first responder, so we can call it on both text fields without needing to check whether either is the first responder.

-(IBAction)backgroundTap:(id)sender
{
    [self.nameTextField resignFirstResponder];
    [self.numberTextField resignFirstResponder];
}

-(IBAction)textFieldDoneEditing:(id)sender{
    [self resignFirstResponder];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
