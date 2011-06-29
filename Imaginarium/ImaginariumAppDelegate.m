//
//  ImaginariumAppDelegate.m
//  Imaginarium
//
//  Created by Mike Goodspeed on 6/5/11.
//  Copyright 2011 Mike Goodspeed. All rights reserved.
//

#import "ImaginariumAppDelegate.h"

@implementation ImaginariumAppDelegate


@synthesize window=_window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UIImage *image = [UIImage imageNamed:@"earth.jpg"];
    imgView = [[UIImageView alloc] initWithImage:image];
    CGRect frame = [[UIScreen mainScreen] applicationFrame];
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:frame];
    scrollView.contentSize = image.size;
    scrollView.minimumZoomScale = 0.07;
    scrollView.maximumZoomScale = 1.0;
    scrollView.zoomScale = 0.7;
    scrollView.delegate = self;
    [scrollView addSubview:imgView];
    [self.window addSubview:scrollView];
    [self.window makeKeyAndVisible];
    [image release];
    return YES;
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return imgView;
}

- (void)dealloc
{
    [imgView release];
    [_window release];
    [super dealloc];
}

@end
