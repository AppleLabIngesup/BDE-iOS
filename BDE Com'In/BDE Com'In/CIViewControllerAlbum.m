//
//  CIViewControllerAlbum.m
//  BDE Com'In
//
//  Created by chrism on 14/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIViewControllerAlbum.h"
#import "CICellViewLeft.h"
#import "CIControllerCellAlbum.h"
#import "IIViewDeckController.h"

@interface CIViewControllerAlbum ()

@end

@implementation CIViewControllerAlbum

@synthesize dataArray;


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Create data for collection views
    NSMutableArray *firstSection = [[NSMutableArray alloc] init];
    NSMutableArray *secondSection = [[NSMutableArray alloc] init];
    
    for (int i=0; i<50; i++) {
        [firstSection addObject:[NSString stringWithFormat:@"Cell %d", i]];
        [secondSection addObject:[NSString stringWithFormat:@"item %d", i]];
    }
    
    self.dataArray = [[NSArray alloc] initWithObjects:firstSection, secondSection, nil];
    
    /* Uncomment this block to use nib-based cells */
    //UINib *cellNib = [UINib nibWithNibName:@"nibCellAlbum" bundle:nil];
    //[self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"CIControllerCellAlbum"];
    /* end of nib-based cells block */
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CIControllerCellAlbum" bundle:nil] forCellWithReuseIdentifier:@"CIControllerCellAlbum"];
    /* end of subclass-based cells block */
    // Configure layout
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(200, 200)];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [self.collectionView setCollectionViewLayout:flowLayout];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    self.collectionView = nil;
    self.dataArray = nil;
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.dataArray count];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
    return [sectionArray count];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    // Setup cell identifier
    static NSString *cellIdentifier = @"nibCellAlbum";
    
    /* Uncomment this block to use subclass-based cells */
    /*CIControllerCellAlbum *cell = (CIControllerCellAlbum *)[collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];*/
    
    CIControllerCellAlbum *cell = (CIControllerCellAlbum *)[self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
    NSString *cellData = [data objectAtIndex:indexPath.row];
    [cell.titleLabel setText:cellData];
    /* end of subclass-based cells block */
    
    // Return the cell
    return cell;
    
}

- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}


@end
