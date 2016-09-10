//
//  ZFStarSortReusableView.h
//  ZFFacewin
//
//  Created by hrq on 16/8/30.
//  Copyright © 2016年 ZhanFang Information Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZFStarSortReusableView;
@protocol ZFStarSortReusableViewDelegate<NSObject>
- (void)startSortReusableView:(ZFStarSortReusableView*) reusableView selectedIndex:(NSInteger)selectedIndex;
@end
@interface ZFStarSortReusableView : UIView
@property(nonatomic,weak) id<ZFStarSortReusableViewDelegate> delegate;
@property(nonatomic,copy) NSArray *characters;
@property(nonatomic,strong) UIColor *normalTextColor;
@property(nonatomic,strong) UIColor *selectedTextColor;
@end
