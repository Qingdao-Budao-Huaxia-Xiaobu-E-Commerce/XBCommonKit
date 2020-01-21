//
//  UIButton+HXSafe.h
//  HXTechnician
//
//  Created by 苏金旭 on 2020/1/8.
//  Copyright © 2020 华夏布道集团. All rights reserved.
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (HXSafe)

/**设置点击时间间隔*/
@property (nonatomic, assign) NSTimeInterval timeInterval;
//用于设置单个按钮不需要被hook (设为yes说明可以重复点击)
@property (nonatomic, assign) BOOL isIgnore;

@end

NS_ASSUME_NONNULL_END
