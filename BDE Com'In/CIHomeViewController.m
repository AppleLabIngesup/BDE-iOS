//
//  CIHomeViewController.m
//  BDE Com'In
//
//  Created by Hellsingblack on 10/06/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIHomeViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface CIHomeViewController ()

@end

@implementation CIHomeViewController

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
    
    _titleHome.textColor = [UIColor grayColor];
    
    _imageHome.layer.cornerRadius = 5.0f;
    _imageHome.layer.masksToBounds = YES;
    
    //_imageHome.layer.borderColor = [UIColor grayColor].CGColor;
    //_imageHome.layer.borderWidth = 1;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
