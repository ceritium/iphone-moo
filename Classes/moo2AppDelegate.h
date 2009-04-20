//
//  moo2AppDelegate.h
//  moo2
//
//  Created by ceritium on 19/04/09.
//  Copyright __MyCompanyName__ 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class moo2ViewController;

@interface moo2AppDelegate : NSObject <UIApplicationDelegate> {
	IBOutlet UIWindow *window;
	IBOutlet moo2ViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet moo2ViewController *viewController;

@end

