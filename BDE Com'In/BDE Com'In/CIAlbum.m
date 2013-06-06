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

    
    
    albums = [[NSArray alloc] initWithObjects:@"noImage.png",@"noImage.png",@"noImage.png",@"noImage.png",@"noImage.png",@"noImage.png",@"noImage.png",@"noImage.png", nil];

    
    [self.collectionView registerClass:[CVCell class] forCellWithReuseIdentifier:@"cvCell"];
    
    UINib *cellNib = [UINib nibWithNibName:@"CVCell" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:@"cvCell"];
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [flowLayout setItemSize:CGSizeMake(150, 150)];
    
    //[flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    [self.collectionView setCollectionViewLayout:flowLayout];
    
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return [albums count];
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    printf("Selected View index=%d \r",indexPath.row);
}

-(CVCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    
    static NSString *cellIdentifier = @"cvCell";
    
    CVCell *cell = (CVCell *) [collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"thumbnail.png"]];
    
    //[[cell picture] setImage:[UIImage imageNamed:[albums objectAtIndex:indexPath.row]]];
    cell.picture.image = [UIImage imageNamed:[albums objectAtIndex:indexPath.row]];
    return cell;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)deckMenu:(id)sender {
    
    [self.viewDeckController toggleLeftViewAnimated:YES];
}
@end
