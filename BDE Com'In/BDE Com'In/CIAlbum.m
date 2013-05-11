//
//  CIAlbum.m
//  BDE Com'In
//
//  Created by chrism on 10/05/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CIAlbum.h"
#import "CVCell.h"
#import "IIViewDeckController.h"
#import "CICellViewLeft.h"

@interface CIAlbum ()

@end

@implementation CIAlbum
@synthesize albums;

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
    
    NSMutableArray *firstSection = [[NSMutableArray alloc] init];
    NSMutableArray *secondSection = [[NSMutableArray alloc] init];
    
    for (int i=0; i<50; i++) {
        [firstSection addObject:[NSString stringWithFormat:@"noImage.png %d", i]];
        [secondSection addObject:[NSString stringWithFormat:@"noImage.png %d", i]];
    }
    
    self.dataArray = [[NSArray alloc] initWithObjects:firstSection, secondSection, nil];
    
    [self.collectionView registerClass:[CVCell class] forCellWithReuseIdentifier:@"cvCell"];
    
    UINib *cellNib = [UINib nibWithNibName:@"NibCell" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"cvCell"];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(150, 150)];
    
    //[flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [self.collectionView setCollectionViewLayout:flowLayout];
    
}


-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *cellIdentifier = @"cvCell";
    
    CVCell *cell =(CVCell *) [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    NSMutableArray *data = [self.dataArray objectAtIndex:indexPath.section];
    
    NSString *cellData = [data objectAtIndex:indexPath.row];
    
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"thumbnail.png"]];
    //UILabel *titleLabel = (UILabel *)[cell viewWithTag:100];
    
    //[titleLabel setText:cellData];
    cell.picture.image = [UIImage imageNamed:[self.dataArray objectAtIndex:cellData]];
    return cell;
    
}




-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return [self.dataArray count];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    NSMutableArray *sectionArray = [self.dataArray objectAtIndex:section];
    return [sectionArray count];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    printf("Selected View index=%d \r",indexPath.row);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setCollectionView:nil];
    [super viewDidUnload];
}
- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
@end
