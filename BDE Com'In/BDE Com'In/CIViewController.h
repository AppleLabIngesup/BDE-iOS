//
//  CIViewController.h
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapKit/MapKit.h"

@interface CIViewController : UIViewController
@property (weak, nonatomic) IBOutlet MKMapView *map;
- (IBAction)deckMenu:(id)sender;

@end
