//
//  UIWindow+KHSafeArea.m
//  Video
//
//  Created by saina on 2020/11/12.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "UIWindow+KHSafeArea.h"

@implementation UIWindow (KHSafeArea)

- (UIEdgeInsets)kh_layoutInsets {
    if (@available(iOS 11.0, *)) {
        UIEdgeInsets safeAreaInsets = self.safeAreaInsets;
        if (safeAreaInsets.bottom > 0) {
            //参考文章：https://mp.weixin.qq.com/s/Ik2zBox3_w0jwfVuQUJAUw
            return safeAreaInsets;
        }
        return UIEdgeInsetsMake(20, 0, 0, 0);
    }
    return UIEdgeInsetsMake(20, 0, 0, 0);
}

- (CGFloat)kh_navigationHeight {
    CGFloat statusBarHeight = [self kh_layoutInsets].top;
    return statusBarHeight + 44;
}

@end
