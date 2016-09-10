//
//  ZFStarCollectionViewCell.m
//  ZFFacewin
//
//  Created by hrq on 16/8/24.
//  Copyright © 2016年 ZhanFang Information Technology Co., Ltd. All rights reserved.
//

#import "ZFStarCollectionViewCell.h"

@implementation ZFStarCollectionViewCell
- (instancetype)init {
    if (self = [super init]) {
        [self initSubViews];
    }
    return self;
}
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self = [super initWithCoder:aDecoder]) {
        [self initSubViews];
    }
    return self;
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self initSubViews];
    }
    return self;
}
- (void)initSubViews {
    self.backgroundColor = [UIColor clearColor];
    self.nameLb = [[UILabel alloc] init];
    self.nameLb.font = [UIFont systemFontOfSize:14.0];
    self.nameLb.textColor = [UIColor whiteColor];
    self.nameLb.textAlignment = NSTextAlignmentCenter;
    [self.contentView  addSubview:self.nameLb];
    [self.nameLb setTranslatesAutoresizingMaskIntoConstraints:NO];
//    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[nameLb]-0-|" options:0 metrics:nil views:@{@"nameLb":self.nameLb}]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.nameLb attribute:NSLayoutAttributeCenterX relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterX multiplier:1.0 constant:0]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:self.nameLb attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];

    [self.contentView  addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[nameLb(30)]" options:0 metrics:nil views:@{@"nameLb":self.nameLb}]];
}
- (void)setItemSelected:(BOOL)itemSelected {
    _itemSelected = itemSelected;
    if (_itemSelected) {
        self.nameLb.textColor = [UIColor colorWithRed:1.0 green:167.0/255 blue:166.0/255 alpha:1.0];
    }
    else {
        self.nameLb.textColor = [UIColor whiteColor];
    }
}
@end
