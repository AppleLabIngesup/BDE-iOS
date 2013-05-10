//
//  CITableView.h
//  BDE Com'In
//
//  Created by chrism on 10/05/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CITableView : UITableViewController

@property(nonatomic, retain) NSArray * albums;

- (IBAction)deckMenu:(id)sender;

@end
