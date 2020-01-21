//
//  UIFont+font.h
//  Ccreate_iOS
//
//  Created by 魏魏 on 2019/12/23.
//  Copyright © 2019 yunchuang. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIFont (font)

+ (UIFont *)fontSize:(CGFloat)size;
+ (UIFont *)mediumFontSize:(CGFloat)size;
+ (UIFont *)boldFontSize:(CGFloat)size;

@end

NS_ASSUME_NONNULL_END
