//
//  CIAppDelegate.h
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CIViewController;

@interface CIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CIViewController *viewController;

@property (retain, nonatomic) UIViewController *centerController;
@property (retain, nonatomic) UIViewController *leftController;


@end
