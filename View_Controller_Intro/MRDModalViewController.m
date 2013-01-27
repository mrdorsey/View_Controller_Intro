//
//  ModalViewController.m
//  View_Controller_Intro
//
//  Created by Michael Dorsey on 1/26/13.
//  Copyright (c) 2013 Michael Dorsey. All rights reserved.
//

#import "MRDModalViewController.h"
#import "MRDViewController.h"

@interface MRDModalViewController ()

@end

@implementation MRDModalViewController

- (void)viewDidLoad
{    
	self.view.backgroundColor = [UIColor lightGrayColor];
	
	[[self dismissBtn]
		setTitle:[NSString stringWithFormat:@"%@%@", @"Dismisss ", [self transactionType]]
				  forState:UIControlStateNormal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnToParent:(id)sender {
	[self dismissViewControllerAnimated:YES completion:nil];
}

@end
