//
//  RQQuestionDetailVC.h
//  RQPartyMember
//
//  Created by hrq on 16/9/5.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger,QuestionStyle) {
    QuestionAnswer =0,
    QuestionDetail = 1
};
@interface RQQuestionDetailVC : UIViewController
@property(nonatomic,assign) QuestionStyle style;
@end
