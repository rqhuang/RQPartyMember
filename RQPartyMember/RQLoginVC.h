//
//  RQLoginVC.h
//  RQPartyMember
//
//  Created by hrq on 16/9/10.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^loginComplete)(BOOL flag);
@interface RQLoginVC : UIViewController
@property(nonatomic,copy) loginComplete complete;
@end
