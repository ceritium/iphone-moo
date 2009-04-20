//
//  moo2ViewController.h
//  moo2
//
//  Created by ceritium on 19/04/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface moo2ViewController : UIViewController {
	IBOutlet  UISlider *volumen;

}

- (void) deviceDidRotate: (id) sender;

@property (nonatomic, retain) UISlider *volumen;


@end

