// AppDelegate.m
//
// Copyright (c) 2014 Mattt Thompson (http://mattt.me/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "AppDelegate.h"

#import "AnimatedGIFImageSerialization.h"

@implementation AppDelegate

- (BOOL)application:(__unused UIApplication *)application
didFinishLaunchingWithOptions:(__unused NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    UIViewController *viewController = [[UIViewController alloc] init];
    self.window.rootViewController = viewController;

    UIImageView *imageView = [[UIImageView alloc] initWithFrame:viewController.view.bounds];
    imageView.contentMode = UIViewContentModeCenter;
    imageView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    imageView.image = [UIImage imageNamed:@"animated.gif"];
    [viewController.view addSubview:imageView];

    UIImageView *imageViewNonAnimated = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"nonanimated.gif"]];
    [viewController.view addSubview:imageViewNonAnimated];

    UIImageView *imageViewPNG = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"tesla.png"]];
    CGRect frame = imageViewPNG.frame;
    frame.origin.x = viewController.view.bounds.size.height / 1.5;
    imageViewPNG.frame = frame;
    [viewController.view addSubview:imageViewPNG];

    NSLog(@"Animated gif images: %@", imageView.image.images);
    NSLog(@"Non-animated gif images: %@", imageViewNonAnimated.image.images);
    NSLog(@"PNG images: %@", imageViewPNG.image.images);
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];

    return YES;
}

@end
