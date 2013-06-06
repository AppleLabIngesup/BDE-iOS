//
//  CIAlbum.h
//  BDE Com'In
//
//  Created by chrism on 10/05/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CIAlbum : UIViewController<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic, strong) NSArray *dataArray;
@property(nonatomic, retain) NSArray * albums;

- (IBAction)deckMenu:(id)sender;

@end
