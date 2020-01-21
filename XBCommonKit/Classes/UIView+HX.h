//
//  UIView+HX.h
//  HXTechnician
//
//  Created by 苏金旭 on 2020/1/8.
//  Copyright © 2020 华夏布道集团. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (HX)

@property (nonatomic) CGFloat left;


@property (nonatomic) CGFloat top;

@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat bottom;

@property (nonatomic) CGFloat width;

@property (nonatomic) CGFloat height;

@property (nonatomic) CGFloat centerX;

@property (nonatomic) CGFloat centerY;

@property (nonatomic) CGPoint origin;

@property (nonatomic) CGSize size;

@property (nonatomic, copy) NSString *nametag;

- (UIView *)viewNamed:(NSString *)aName;

- (UIViewController *)viewController;


@end

NS_ASSUME_NONNULL_END
