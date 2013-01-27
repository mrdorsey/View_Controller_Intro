//
//  MRDViewController.h
//  View_Controller_Intro
//
//  Created by Michael Dorsey on 1/26/13.
//  Copyright (c) 2013 Michael Dorsey. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MRDViewController : UIViewController <UIActionSheetDelegate, UIAlertViewDelegate> {
	
}

- (IBAction)showActionSheet:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *coverVerticalLbl;
@property (weak, nonatomic) IBOutlet UILabel *flipHorizontalLbl;
@property (weak, nonatomic) IBOutlet UILabel *crossDissolveLbl;
@property (weak, nonatomic) IBOutlet UILabel *partialCurlLbl;

@end
