//
//  CIViewControllerPartenaires.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "CIViewControllerPartenaires.h"
#import "IIViewDeckController.h"
#import "CIViewControllerPartnerview.h"

@interface CIViewControllerPartenaires ()

@end

@implementation CIViewControllerPartenaires
{
    
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *partnerData = @[
        @{@"name" : @"locaux de google", @"img" : @"Paris 001.jpg"},
        @{@"name" : @"locaux de google", @"img" : @"Paris 002.jpg"},
        @{@"name" : @"locaux de google", @"img" : @"Paris 003.jpg"},
        @{@"name" : @"locaux de google", @"img" : @"Paris 004.jpg"},
    ];
    
    CGSize scrollViewSize = CGSizeMake(self.scrollPartners.bounds.size.width, 0);
    NSInteger i = 0;
    for (NSDictionary *d in partnerData)
    {
        CIViewControllerPartnerview *vc = [[CIViewControllerPartnerview alloc] initWithNibName:@"CIViewControllerPartnerview" bundle:nil];    

        [vc.view setFrame:CGRectMake(vc.view.frame.origin.x + floor((self.scrollPartners.bounds.size.width - vc.view.frame.size.width) / 2.f), vc.view.frame.origin.y + scrollViewSize.height + 8, vc.view.frame.size.width, vc.view.frame.size.height)];
        
        [vc.view setTag:i++];
        [self.scrollPartners addSubview:vc.view];
        [vc.titlePartner setFont:[UIFont fontWithName:@"freeversionSketchBlock-Bold" size:26.0]];
        [vc.titlePartner setText:d[@"name"]];
        [vc.imgPartner setImage:[UIImage imageNamed:d[@"img"]]];
        scrollViewSize.height += vc.view.frame.size.height + 8;
    }
    
    [self.scrollPartners setContentSize:scrollViewSize];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}


- (void)viewDidUnload {
    [self setScrollPartners:nil];
    [self setViewPartners:nil];
    [self setLabelPartners:nil];
    [super viewDidUnload];
}


@end
