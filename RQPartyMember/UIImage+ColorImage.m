//
//  UIImage+ColorImage.m
//  RQPartyMember
//
//  Created by hrq on 16/9/11.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "UIImage+ColorImage.h"

@implementation UIImage (ColorImage)
+ (UIImage *)imageWithColor:(UIColor *)color{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext(); return image;
}
@end
