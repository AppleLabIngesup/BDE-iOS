//
//  CVCell.m
//  BDE Com'In
//
//  Created by chrism on 11/05/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CVCell.h"

@implementation CVCell
@synthesize picture;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSArray *arrayOfViews = [[NSBundle mainBundle] loadNibNamed:@"CVCell" owner:self options:nil];
        
        if ([arrayOfViews count] < 1) {
            return nil;
        }
        
        if (![[arrayOfViews objectAtIndex:0] isKindOfClass:[UICollectionViewCell class]]) {
            return nil;
        }
        
        self = [arrayOfViews objectAtIndex:0];

    }
    return self;
}

@end
