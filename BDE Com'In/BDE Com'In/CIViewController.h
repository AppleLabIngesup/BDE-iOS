//
//  CIViewController.h
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIScrollView *scrollHome;
@property (strong, nonatomic) IBOutlet UILabel *labelHome;
@property (strong, nonatomic) IBOutlet UIBarButtonItem *backButton;

- (IBAction)deckMenu:(id)sender;

@end
