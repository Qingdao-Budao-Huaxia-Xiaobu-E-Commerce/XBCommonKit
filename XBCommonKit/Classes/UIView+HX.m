//
//  UIView+HX.m
//  HXTechnician
//
//  Created by 苏金旭 on 2020/1/8.
//  Copyright © 2020 华夏布道集团. All rights reserved.
//

#import "UIView+HX.h"
#import <objc/runtime.h>

static const char nametag_key;

@implementation UIView (HX)

- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

- (CGFloat)right {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - frame.size.width;
    self.frame = frame;
}

- (CGFloat)bottom {
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - frame.size.height;
    self.frame = frame;
}

- (CGFloat)centerX {
    return self.center.x;
}

- (void)setCenterX:(CGFloat)centerX {
    self.center = CGPointMake(centerX, self.center.y);
}

- (CGFloat)centerY {
    return self.center.y;
}

- (void)setCenterY:(CGFloat)centerY {
    self.center = CGPointMake(self.center.x, centerY);
}

- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}

- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

- (id)nametag
{
    return objc_getAssociatedObject(self, (void *)&nametag_key);
}

- (void)setNametag:(NSString *)theNametag
{
    objc_setAssociatedObject(self, (void *)&nametag_key, theNametag, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (UIView *)viewWithNametag:(NSString *)name
{
    if (!name) {
        return nil;
    }
    
    if ([self.nametag isEqualToString:name]) {
        return  self;
    }
    
    for (UIView *subview in self.subviews) {
        UIView *resultView = [subview viewNamed:name];
        if (resultView) {
            return resultView;
        }
    }
    
    return nil;
}

- (UIView *)viewNamed:(NSString *)name
{
    if (!name) {
        return nil;
    }
    
    return [self viewWithNametag:name];
}


- (UIViewController *)viewController{
    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}

@end
