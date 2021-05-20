//
//  SNKHUtil.h
//  Video
//
//  Created by saina on 2020/11/14.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SNKHUtil : NSObject

/// 得到视图在Window上的位置
/// @param view view
+ (CGRect)convertView:(UIView*)view;

/// 比较两个字符串是否相等(判断nil)
+ (BOOL)isEqualstr:(NSString *)str toStr:(NSString *)toStr;

/// 限制字符长度（自动计算中英文长度）
+ (NSString *)subStringWithText:(NSString *)text maxLength:(NSInteger)maxLength;

/// 字符串是否全为数字
+ (BOOL)deptNumInputShouldNumber:(NSString *)str;

/// 获取根控制器
+ (UIViewController *)getRootViewController;

/// 获取当前最顶层控制器
+ (UIViewController *)getCurrentViewController;

/// json串转换成字典/数组
+ (id)arrayWithJsonString:(NSString *)jsonString;

@end

NS_ASSUME_NONNULL_END
