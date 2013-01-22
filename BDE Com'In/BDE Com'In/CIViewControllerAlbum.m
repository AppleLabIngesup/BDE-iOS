//
//  CIViewControllerAlbum.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerAlbum.h"
#import "IIViewDeckController.h"
#import "CICellViewLeft.h"

@interface CIViewControllerAlbum ()

@end

@implementation CIViewControllerAlbum

@synthesize dataArray;


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
    
    NSMutableArray * firstSection = [[NSMutableArray alloc] init];
    NSMutableArray * secondSection = [[NSMutableArray alloc] init];
    
    for (int i=0; i<50; i++) {
        [firstSection addObject:[NSString stringWithFormat:@"Cell %d", i]];
        [secondSection addObject:[NSString stringWithFormat:@"item %d", i]];
    }
    self.dataArray = [[NSArray alloc] initWithObjects: firstSection, secondSection, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deckMenu:(id)sender {
    [self.viewDeckController toggleLeftViewAnimated:YES];
}

- (NSInteger) numberOfSectionsInCollectionView: (UICollectionView *) CollectionView {
    return [self.dataArray count];
}

- (NSInteger) CollectionView: (UICollectionView *) CollectionView numberOfItemsInSection: (NSInteger) section {
    NSMutableArray * sectionArray = [self.dataArray objectAtIndex: section];
    return [sectionArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // Setup cell identifier
    static NSString *cellIdentifier = @"cvCell";
    
    /*  Uncomment this block to use nib-based cells */
     UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
     UILabel *titleLabel = (UILabel *)[cell viewWithTag:100];
     [titleLabel setText:@"test"];
    /* end of nib-based cell block */
    
    
    // Return the cell
    return cell;
    
}
@end
