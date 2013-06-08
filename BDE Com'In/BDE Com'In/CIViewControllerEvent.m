//
//  CIViewControllerEvent.m
//  BDE Com'In
//
//  Created by Mehdi on 20/02/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerEvent.h"
#import "CIViewControllerEvenement.h"
#import "IIViewDeckController.h"
#import "CICellViewLeft.h"

@interface CIViewControllerEvent ()

@end

@implementation CIViewControllerEvent

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)retourEvenement:(id)sender {
    self.viewController = [[CIViewControllerEvenement alloc] initWithNibName:@"CIViewControllerEvenement" bundle:nil];
    [self.view addSubview:self.viewController.view];
}

- (IBAction)openPhoto:(id)sender {
}

- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
- (void)viewDidUnload {
    [self setDescription:nil];
    [self setImageEvenement:nil];
    [super viewDidUnload];
}
@end
