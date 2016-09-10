//
//  ZFStarSortReusableView.m
//  ZFFacewin
//
//  Created by hrq on 16/8/30.
//  Copyright © 2016年 ZhanFang Information Technology Co., Ltd. All rights reserved.
//

#import "ZFStarSortReusableView.h"
#import "ZFStarCollectionViewCell.h"

@interface ZFStarSortReusableView()
@property(nonatomic,weak) IBOutlet UICollectionView *collectionView;
@property(nonatomic,assign) int selectedStarIndex;
@end
@implementation ZFStarSortReusableView

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    [self.collectionView registerClass:[ZFStarCollectionViewCell class] forCellWithReuseIdentifier:@"cellIdentifier"];
    _selectedTextColor = [UIColor whiteColor];
    _normalTextColor = [UIColor blackColor];
}
- (void)setCharacters:(NSArray *)characters {
    _characters = [characters copy];
    [self.collectionView reloadData];
}
- (void)setNormalTextColor:(UIColor *)normalTextColor {
    _normalTextColor = normalTextColor;
}
- (void)setSelectedTextColor:(UIColor *)selectedTextColor {
    _selectedTextColor = selectedTextColor;
}
#pragma mark - UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.characters.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ZFStarCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"cellIdentifier" forIndexPath:indexPath];
    NSString *name = [self.characters objectAtIndex:indexPath.item];
    cell.nameLb.text = name;
    if (self.selectedStarIndex == indexPath.item) {
        cell.itemSelected = YES;
        cell.nameLb.textColor = self.selectedTextColor;
        cell.nameLb.backgroundColor = [UIColor redColor];
        cell.nameLb.layer.cornerRadius = 5;
        cell.nameLb.layer.masksToBounds = YES;
        cell.nameLb.font = [UIFont systemFontOfSize:14];
    }
    else {
        cell.itemSelected = NO;
        cell.nameLb.textColor = self.normalTextColor;
        cell.nameLb.font = [UIFont systemFontOfSize:14];
        cell.nameLb.backgroundColor = [UIColor whiteColor];
        cell.nameLb.layer.cornerRadius = 0;
        cell.nameLb.layer.masksToBounds = YES;
    }
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    self.selectedStarIndex =(int) indexPath.item;
    [self.collectionView reloadData];
    if ([self.delegate respondsToSelector:@selector(startSortReusableView:selectedIndex:)]) {
        [self.delegate startSortReusableView:self selectedIndex:self.selectedStarIndex];
    }
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    return CGSizeMake(CGRectGetWidth(self.bounds)/self.characters.count, CGRectGetHeight(self.bounds));
}
@end
