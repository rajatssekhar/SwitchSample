//
//  ImageSampleViewController.h
//  ImageSample
//
//  Created by Raja on 1/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageSampleViewController : UIViewController {

	IBOutlet UITextField *txtBasicSalary;
	IBOutlet UITextField *txtTax;
	IBOutlet UITextField *txtNetSalary;
	IBOutlet UITextField *txtBonus;
	
	IBOutlet UISwitch *eligibleForBonus;
}

- (IBAction) calculateNetSalary;

@property (nonatomic, retain) UITextField *txtBasicSalary;
@property (nonatomic, retain) UITextField *txtTax;
@property (nonatomic, retain) UITextField *txtNetSalary;
@property (nonatomic, retain) UITextField *txtBonus;

@property (nonatomic, retain) UISwitch *eligibleForBonus;

@end

