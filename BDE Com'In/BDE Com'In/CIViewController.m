//
//  CIViewController.m
//  BDE Com'In
//
//  Created by Mehdi on 09/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewController.h"
#import "IIViewDeckController.h"

@interface CIViewController ()

@end

@implementation CIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];
    
    if ([self.navigationItem respondsToSelector:@selector(leftBarButtonItems)]) {
        self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:
                                                  [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)],nil];
    } else {
        self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStyleBordered target:self.viewDeckController action:@selector(toggleLeftView)];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
