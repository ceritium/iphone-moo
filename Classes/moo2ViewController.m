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



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void) viewDidLoad {
    [super viewDidLoad];
	[[UIDevice currentDevice]  beginGeneratingDeviceOrientationNotifications];
	
	[[NSNotificationCenter defaultCenter] addObserver:self	selector:@selector(deviceDidRotate:) name:@"UIDeviceOrientationDidChangeNotification" object:nil];
}


- (void) deviceDidRotate: (id) sender {

	UIDeviceOrientation orientation;
	orientation = [[UIDevice currentDevice] orientation];
	if (orientation == UIDeviceOrientationPortraitUpsideDown ||
		orientation == UIDeviceOrientationLandscapeRight ||
		orientation == UIDeviceOrientationLandscapeLeft) {
		//UIAlertView *alert = [[[UIAlertView alloc] init] autorelease];
		//alert.title = @"Prueba";
		//alert.message = @"Esto es una prueba";
		//[alert show];
		
		//Play sound ----------------------
		
		//Preparar la ruta al fichero
		NSString *paths = [[NSBundle mainBundle] resourcePath];                     
		NSString *audioFile = [paths stringByAppendingPathComponent: @"cow.wav"];                                      
		NSURL *audioURL =  [NSURL fileURLWithPath:audioFile isDirectory:NO];
		
		//Crear el sonido
		SystemSoundID mySSID;
		AudioServicesCreateSystemSoundID((CFURLRef) audioURL, &mySSID);
		AudioServicesPlaySystemSound(mySSID);
		//AudioServicesAddSystemSoundCompletion(mySSID, NULL, NULL, simpleSoundDone, NULL);

		//Vibramos
		 AudioServicesPlaySystemSound(kSystemSoundID_Vibrate);
	}
}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/
static void simpleSoundDone
(SystemSoundID mySSID, void *args){
	AudioServicesDisposeSystemSoundID(mySSID);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning]; // Releases the view if it doesn't have a superview
    // Release anything that's not essential, such as cached data
}




@end
