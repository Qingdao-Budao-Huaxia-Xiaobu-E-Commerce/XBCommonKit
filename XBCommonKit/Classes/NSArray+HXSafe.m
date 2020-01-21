//
//  NSArray+HXSafe.m
//  HXTechnician
//
//  Created by 苏金旭 on 2020/1/9.
//  Copyright © 2020 华夏布道集团. All rights reserved.
//

#import "NSArray+HXSafe.h"
#import <objc/runtime.h>

@implementation NSArray (HXSafe)

+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        Method sysMehtod = class_getInstanceMethod(NSClassFromString(@"__NSArrayI"), @selector(objectAtIndex:));
        Method swizzzlingMethod = class_getInstanceMethod([NSArray class], @selector(hx_objectAtIndex:));
        method_exchangeImplementations(swizzzlingMethod, sysMehtod);
        
    });
}

- (id)hx_objectAtIndex:(NSUInteger)index{
    if(index > [self count]){

        return  nil;
    }
    return [self hx_objectAtIndex:index];
}


@end
