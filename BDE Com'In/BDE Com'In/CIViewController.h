//
//  CIViewController.h
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface CIViewController : UIViewController<iCarouselDataSource, iCarouselDelegate>
- (IBAction)deckMenu:(id)sender;
@property (strong, nonatomic) IBOutlet iCarousel *carousel;
@property (strong, nonatomic) NSMutableArray *animals;
@property (strong, nonatomic) NSMutableArray *descriptions;
@property (nonatomic) BOOL wrap;
@end
