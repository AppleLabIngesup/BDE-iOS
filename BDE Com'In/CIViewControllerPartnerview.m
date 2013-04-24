//
//  CIViewControllerPartnerview.m
//  BDE Com'In
//
//  Created by Hellsingblack on 10/04/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerPartnerview.h"
#import <QuartzCore/QuartzCore.h>

@interface CIViewControllerPartnerview ()

@end

@implementation CIViewControllerPartnerview

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view.layer setCornerRadius:2.0f];
    [self.view.layer setShadowColor:[UIColor blackColor].CGColor];
    [self.view.layer setShadowOpacity:0.8];
    [self.view.layer setShadowRadius:3.0];
    [self.view.layer setShadowOffset:CGSizeMake(2.0, 2.0)];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setTitlePartner:nil];
    [self setImgPartner:nil];
    [self setContentPartner:nil];
    [self setCellViewPartner:nil];
    [super viewDidUnload];
}
@end
