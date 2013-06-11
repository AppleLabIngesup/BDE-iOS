//
//  CIViewController.m
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewController.h"
#import "IIViewDeckController.h"
#import "CIHomeViewController.h"

@interface CIViewController ()

@end

@implementation CIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *partnerData = @[
    @{@"name" : @"Sejour Prague", @"img" : @"prague.png", @"date" : @"12/03/2013"},
    @{@"name" : @"Partenariat", @"img" : @"img2.png", @"date" : @"04/08/2013"},
    @{@"name" : @"Sejour Venise", @"img" : @"venise.png", @"date" : @"10/05/2013"},
    @{@"name" : @"Roda do Cavaco", @"img" : @"roda.png", @"date" : @"11/01/2013"},
    ];
    
    CGSize scrollViewSize = CGSizeMake(self.scrollHome.bounds.size.width, 0);
    NSInteger i = 0;
    for (NSDictionary *d in partnerData)
    {
        CIHomeViewController *vc = [[CIHomeViewController alloc] initWithNibName:@"CIHomeViewController" bundle:nil];
        
        [vc.view setFrame:CGRectMake(vc.view.frame.origin.x + floor((self.scrollHome.bounds.size.width - vc.view.frame.size.width) / 2.f), vc.view.frame.origin.y + scrollViewSize.height + 8, vc.view.frame.size.width, vc.view.frame.size.height)];
        
        [vc.view setTag:i++];
        [self.scrollHome addSubview:vc.view];
        [vc.titleHome setFont:[UIFont fontWithName:@"freeversionSketchBlock-Bold" size:14.0]];
        [vc.titleHome setText:d[@"name"]];
        [vc.date setText:d[@"date"]];
        [vc.imageHome setImage:[UIImage imageNamed:d[@"img"]]];
        
        scrollViewSize.height += vc.view.frame.size.height + 8;
    }
    
    [self.scrollHome setContentSize:scrollViewSize];

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
    [self setBackButton:nil];
    [super viewDidUnload];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {

    }
    return self;
}
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationLandscapeLeft || interfaceOrientation == UIInterfaceOrientationLandscapeRight);
}


@end
