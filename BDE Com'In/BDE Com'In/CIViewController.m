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
@synthesize wrap;
@synthesize animals;
@synthesize carousel;
- (void)viewDidLoad
{
    carousel.type = iCarouselTypeCoverFlow2;
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

- (IBAction)deckMenu:(id)sender {
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
- (void)viewDidUnload {
    [self setCarousel:nil];
    [self setBackButton:nil];
    [super viewDidUnload];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //set up carousel data
        wrap = NO;
        self.animals = [NSMutableArray arrayWithObjects:@"Bear.png",
                        @"Zebra.png",
                        @"Tiger.png",
                        @"Goat.png",
                        @"Birds.png",
                        @"Giraffe.png",
                        @"Chimp.png",
                        nil];
        self.descriptions = [NSMutableArray arrayWithObjects:@"Bears Eat: Honey",
                             @"Zebras Eat: Grass",
                             @"Tigers Eat: Meat",
                             @"Goats Eat: Weeds",
                             @"Birds Eat: Seeds",
                             @"Giraffes Eat: Trees",
                             @"Chimps Eat: Bananas",
                             nil];
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

#pragma mark -
#pragma mark iCarousel methods

- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel
{
    return [animals count];
}

- (NSUInteger)numberOfVisibleItemsInCarousel:(iCarousel *)carousel
{
    //limit the number of items views loaded concurrently (for performance reasons)
    return 7;
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
    //create a numbered view
	UIView *view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[animals objectAtIndex:index]]];
	return view;
}

- (NSUInteger)numberOfPlaceholdersInCarousel:(iCarousel *)carousel
{
	//note: placeholder views are only displayed on some carousels if wrapping is disabled
	return 0;
}


- (CGFloat)carouselItemWidth:(iCarousel *)carousel
{
    //usually this should be slightly wider than the item views
    return 240;
}


- (BOOL)carouselShouldWrap:(iCarousel *)carousel
{
    //wrap all carousels
    return wrap;
}

- (void)carouselDidEndScrollingAnimation:(iCarousel *)aCarousel
{
}



@end
