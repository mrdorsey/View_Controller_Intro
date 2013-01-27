//
//  ViewController.m
//  View_Controller_Intro
//
//  Created by Michael Dorsey on 1/26/13.
//  Copyright (c) 2013 Michael Dorsey. All rights reserved.
//

#import "MRDModalViewController.h"
#import "MRDViewController.h"
#import "MRDViewControllerIntroConstants.h"

@interface MRDViewController ()

@property (nonatomic, assign) int coverVerticalCount;
@property (nonatomic, assign) int flipHorizontalCount;
@property (nonatomic, assign) int crossDissolveCount;
@property (nonatomic, assign) int partialCurlCount;
@property (nonatomic, strong) UIActionSheet *transitionSheet;

@end

@implementation MRDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
	self.view.backgroundColor = [UIColor lightGrayColor];
	
	[[self coverVerticalLbl] setText:[NSString stringWithFormat:@"%@%@%d", CoverVertical, @": ",0]];
	[[self flipHorizontalLbl] setText:[NSString stringWithFormat:@"%@%@%d", FlipHorizontal, @": ", 0]];
	[[self crossDissolveLbl] setText:[NSString stringWithFormat:@"%@%@%d", CrossDissolve, @": ", 0]];
	[[self partialCurlLbl] setText:[NSString stringWithFormat:@"%@%@%d", PartialCurl, @": ", 0]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showActionSheet:(id)sender {
	UIActionSheet *transitionSheet = nil;
	transitionSheet = [[UIActionSheet alloc]
					   initWithTitle:@"Which Modal Transition Style?"
					   delegate: self
					   cancelButtonTitle:@"Cancel"
					   destructiveButtonTitle:@"Destroy"
					   otherButtonTitles:CoverVertical,
										 FlipHorizontal,
										 CrossDissolve,
										 PartialCurl,
										 nil];
	
	self.transitionSheet = transitionSheet;
	[transitionSheet showInView:self.view.window];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
	MRDModalViewController *modalController = [[MRDModalViewController alloc] init];
	
	switch (buttonIndex) {
        case 0:
		{
			UIAlertView *alert = [[UIAlertView alloc]
								  initWithTitle:@"Really Destroy?"
								  message:@"This will destroy everything."
								  delegate:self
								  cancelButtonTitle:nil
								  otherButtonTitles:@"Yes", @"No", nil];
			[alert show];
			break;
		}
        case 1:
            [modalController setModalTransitionStyle:UIModalTransitionStyleCoverVertical];
			modalController.transactionType = CoverVertical;
			[self presentViewController:modalController animated:YES completion:nil];
			self.coverVerticalCount++;
			[[self coverVerticalLbl] setText:[NSString stringWithFormat:@"%@%@%d", CoverVertical, @": ", [self coverVerticalCount]]];
            break;
        case 2:
			[modalController setModalTransitionStyle:UIModalTransitionStyleFlipHorizontal];
			modalController.transactionType = FlipHorizontal;
			[self presentViewController:modalController animated:YES completion:nil];
			self.flipHorizontalCount++;
			[[self flipHorizontalLbl] setText:[NSString stringWithFormat:@"%@%@%d", FlipHorizontal, @": ", [self flipHorizontalCount]]];
            break;
		case 3:
            [modalController setModalTransitionStyle:UIModalTransitionStyleCrossDissolve];
			modalController.transactionType = CrossDissolve;
			[self presentViewController:modalController animated:YES completion:nil];
			self.crossDissolveCount++;
			[[self crossDissolveLbl] setText:[NSString stringWithFormat:@"%@%@%d", CrossDissolve, @": ", [self crossDissolveCount]]];
            break;
		case 4:
            [modalController setModalTransitionStyle:UIModalTransitionStylePartialCurl];
			modalController.transactionType = PartialCurl;
			[self presentViewController:modalController animated:YES completion:nil];
			self.partialCurlCount++;
			[[self partialCurlLbl] setText:[NSString stringWithFormat:@"%@%@%d", PartialCurl, @": ", [self partialCurlCount]]];
            break;
		case 5:
			[actionSheet dismissWithClickedButtonIndex:actionSheet.cancelButtonIndex animated:YES];
			break;
    }
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
	if (buttonIndex == 0) {
		self.view.backgroundColor = [UIColor redColor];
	}
	else {
		self.view.backgroundColor = [UIColor lightGrayColor];
	}
}

@end
