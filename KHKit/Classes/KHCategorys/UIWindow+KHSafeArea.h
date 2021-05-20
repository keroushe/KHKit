//
//  UIWindow+KHSafeArea.h
//  Video
//
//  Created by saina on 2020/11/12.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIWindow (KHSafeArea)

- (UIEdgeInsets)kh_layoutInsets;

- (CGFloat)kh_navigationHeight;

@end

NS_ASSUME_NONNULL_END
