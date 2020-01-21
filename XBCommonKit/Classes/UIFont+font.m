//
//  UIFont+font.m
//  Ccreate_iOS
//
//  Created by 魏魏 on 2019/12/23.
//  Copyright © 2019 yunchuang. All rights reserved.
//

#import "UIFont+font.h"


@implementation UIFont (font)

static NSString  *const fontName = @"Helvetica";
+ (UIFont *)mediumFontSize:(CGFloat)size
{
    CGFloat fontSize = ceilf(size) * KScreenWidth / 350;
    return [UIFont fontWithName:@"PingFangSC-Medium" size:fontSize];
}
+ (UIFont *)fontSize:(CGFloat)size
{
    CGFloat fontSize = ceilf(size) * KScreenWidth / 350;
    return [UIFont systemFontOfSize:fontSize];
}
+ (UIFont *)boldFontSize:(CGFloat)size
{
    CGFloat fontSize = ceilf(size) * KScreenWidth / 350;
    return [UIFont boldSystemFontOfSize:fontSize];
}

@end
