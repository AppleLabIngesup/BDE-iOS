//
//  CICellEvenement.m
//  BDE Com'In
//
//  Created by chrism on 07/06/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CICellEvenement.h"

@implementation CICellEvenement
@synthesize imageView, descEvent;

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
