//
//  ImageSampleViewController.m
//  ImageSample
//
//  Created by Raja on 1/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ImageSampleViewController.h"

@implementation ImageSampleViewController

@synthesize txtBasicSalary;
@synthesize txtTax;
@synthesize txtNetSalary;
@synthesize txtBonus;

@synthesize eligibleForBonus;


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	NSLog(@"View Loaded");
    [super viewDidLoad];
}

- (IBAction) calculateNetSalary {
	NSLog(@"Button clicked");
	
	float bs = 0.0f;
	float tax = 0.0f;
	float bonus = 0.0f;
	float ns = 0.0f;
	
	bs = [txtBasicSalary.text floatValue];
	tax = bs * 3 / 100;
	if (eligibleForBonus.on) {
		bonus = bs * 10 / 100;
	}
	ns = bs + bonus - tax;
	
	[txtTax setText:[NSString stringWithFormat:@"%.2f",tax]];
	[txtBonus setText:[NSString stringWithFormat:@"%.2f",bonus]];
	[txtNetSalary setText:[NSString  stringWithFormat:@"%.2f",ns]];
	
}

// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
	return YES;
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[txtTax release];
	[txtBonus release];
	[txtBasicSalary release];
	[txtNetSalary release];
	[eligibleForBonus release];
	
    [super dealloc];
}

@end
