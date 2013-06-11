//
//  CIViewControllerNews.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerNews.h"
#import "IIViewDeckController.h"
#import "CICellEvenement.h"

@interface CIViewControllerNews ()

@end

@implementation CIViewControllerNews

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.wrap = NO;
        self.images = [NSMutableArray arrayWithObjects:@"img-1.png",
                       @"img-2.png",
                       @"img-3.png",
                       nil];
        
    }
    return self;
}

- (void)viewDidLoad
{
    self.carousel.type = iCarouselTypeCoverFlow2;
    [super viewDidLoad];
    
    NSDictionary *desc = [[NSDictionary alloc] initWithObjectsAndKeys:@"Lorem ipsum dolor sit amet, consectetuer adipiscing",@"cat",@"soiree-poker-min.png",@"img",nil];
    NSDictionary *desc1 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Lorem ipsum dolor sit amet, consectetuer adipiscing",@"cat",@"desc-soiree-min.png",@"img",nil];
    NSDictionary *desc2 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Lorem ipsum dolor sit amet, consectetuer adipiscing",@"cat",@"desc-pizza-min.png",@"img",nil];
    NSDictionary *desc3 = [[NSDictionary alloc] initWithObjectsAndKeys:@"Lorem ipsum dolor sit amet, consectetuer adipiscing",@"cat",@"desc-soiree-min.png",@"img",nil];

    
    //array menu complet
    self.menuDesc = [[NSArray alloc] initWithObjects:desc,desc1,desc2,desc3,nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// return la hauteur de la cellule custom
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.menuDesc count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"CICellEvenement";
    //on utilise notre cellules personaliser
    CICellEvenement *cell = (CICellEvenement *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        //chargement de la cellule custom
        NSArray *ixb = [[NSBundle mainBundle] loadNibNamed:@"CICellEvenement" owner:self options:nil];
        
        //parcourir les objets du xib
        for(id oneObject in ixb){
            
            if ([oneObject isKindOfClass:[CICellEvenement class]]) {
                cell = (CICellEvenement *)oneObject;
            }
        }
    }
    
    NSDictionary *current = [self.menuDesc objectAtIndex:indexPath.row];
    
    
    [cell.descEvent setText:[current objectForKey:@"cat"]];
    [cell.imgDescEvent setImage:[UIImage imageNamed:[current objectForKey:@"img"]]];
    return cell;
}



#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}



- (IBAction)deeckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
- (void)viewDidUnload {
    [self setCarousel:nil];
    [self setReTableview:nil ];
    [self setCarousel:nil];
    [super viewDidUnload];
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
    return [self.images count];
}

- (NSUInteger)numberOfVisibleItemsInCarousel:(iCarousel *)carousel
{
    //limit the number of items views loaded concurrently (for performance reasons)
    return 7;
}

- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index
{
    //create a numbered view
	UIView *view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:[self.images objectAtIndex:index]]];
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
    return self.wrap;
}

- (void)carouselDidEndScrollingAnimation:(iCarousel *)aCarousel
{
}


@end
