//
//  CICellCustomAlbum.m
//  BDE Com'In
//
//  Created by chrism on 05/05/13.
//  Copyright (c) 2013 Ingesup. All rights reserved.
//

#import "CICellCustomAlbum.h"

@implementation CICellCustomAlbum

@synthesize pictureAlbum, pictureAlbum1;

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
