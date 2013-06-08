//
//  CIViewControllerEvenement.h
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIViewControllerEvenement : UIViewController
@property(nonatomic, retain) NSArray *menuDesc;

- (IBAction)deckMenu:(id)sender;
@property (strong, nonatomic) IBOutlet UISegmentedControl *onglets;
-(IBAction)segementButton:(id)sender;
@property (strong, nonatomic) IBOutlet UITableView *reTableview;

@end
