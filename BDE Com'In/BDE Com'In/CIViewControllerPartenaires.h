//
//  CIViewControllerPartenaires.h
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIViewControllerPartenaires : UIViewController<UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollPartners;
@property (strong, nonatomic) IBOutlet UIView *viewPartners;
@property (strong, nonatomic) IBOutlet UILabel *labelPartners;


- (IBAction)deckMenu:(id)sender;

@end
