//
//  ImageSampleAppDelegate.h
//  ImageSample
//
//  Created by Raja on 1/12/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ImageSampleViewController;

@interface ImageSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ImageSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ImageSampleViewController *viewController;

@end

