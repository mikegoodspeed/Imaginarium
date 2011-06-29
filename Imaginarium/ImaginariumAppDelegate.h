//
//  ImaginariumAppDelegate.h
//  Imaginarium
//
//  Created by Mike Goodspeed on 6/5/11.
//  Copyright 2011 Mike Goodspeed. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImaginariumAppDelegate : NSObject <UIApplicationDelegate, UIScrollViewDelegate> {
    UIImageView *imgView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
