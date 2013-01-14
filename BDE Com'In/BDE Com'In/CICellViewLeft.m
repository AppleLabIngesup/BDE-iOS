//
//  CICellViewLeft.m
//  BDE Com'In
//
//  Created by chrism on 13/01/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CICellViewLeft.h"

@implementation CICellViewLeft

@synthesize titleCat, imgCat;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
