//
//  moo2ViewController.m
//  moo2
//
//  Created by ceritium on 19/04/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import "moo2ViewController.h"

@implementation moo2ViewController
@synthesize volumen;

- (BOOL)textFieldShouldReturn:(UISlider *) theSlider {
	if (theSlider== volumen)
		[volumen resignFirstResponder];
	return YES;
}


- (void)dealloc {
	[volumen release];
	[super dealloc];
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
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


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}




@end
