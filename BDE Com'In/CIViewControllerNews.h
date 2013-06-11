//
//  CIViewControllerNews.h
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface CIViewControllerNews : UIViewController<iCarouselDataSource, iCarouselDelegate>
- (IBAction)deeckMenu:(id)sender;
//@property (strong, nonatomic) IBOutlet iCarousel *carousel;
@property (strong, nonatomic) IBOutlet iCarousel *carousel;
@property (nonatomic) BOOL wrap;
@property (strong, nonatomic) IBOutlet UITableView *reTableview;
@property (strong, nonatomic) NSMutableArray *images;
@property (strong, nonatomic) NSArray *menuDesc;
@end