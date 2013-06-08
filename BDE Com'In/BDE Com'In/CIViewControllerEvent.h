//
//  CIViewControllerEvent.h
//  BDE Com'In
//
//  Created by Mehdi on 20/02/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CIViewControllerEvenement;

@interface CIViewControllerEvent : UIViewController
- (IBAction)retourEvenement:(id)sender;
- (IBAction)openPhoto:(id)sender;
@property (strong, nonatomic) IBOutlet UITextView *description;
@property (strong, nonatomic) IBOutlet UIImageView *imageEvenement;
@property (strong, nonatomic) CIViewControllerEvenement *viewController;
- (IBAction)deckMenu:(id)sender;
@end
