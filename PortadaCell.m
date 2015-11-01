//
//  PortadaCell.m
//  BreaDeTajo
//
//  Created by Dani Gonzalez castillo on 27/11/13.
//  Copyright (c) 2013 Dani Gonzalez castillo. All rights reserved.
//

#import "PortadaCell.h"

@implementation PortadaCell
@synthesize foto;

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
