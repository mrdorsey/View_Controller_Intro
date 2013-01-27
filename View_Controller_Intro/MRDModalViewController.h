//
//  MRDModalViewController.h
//  View_Controller_Intro
//
//  Created by Michael Dorsey on 1/26/13.
//  Copyright (c) 2013 Michael Dorsey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MRDViewController.h"

@interface MRDModalViewController : UIViewController

@property (weak, nonatomic) NSString *transactionType;
@property (weak, nonatomic) IBOutlet UIButton *dismissBtn;

- (IBAction)returnToParent:(id)sender;

@end
