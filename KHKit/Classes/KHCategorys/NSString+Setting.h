//
//  NSString+Setting.h
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (Setting)

/// 根据内容得到文字大小
/// @param maxSize 最大大小
/// @param textfont 字体
- (CGSize)kh_GetSizeWithmaxSize:(CGSize)maxSize textfont:(UIFont *)textfont;

/// 传入字符串,返回大写的首字母
/// @param strInput 字符串
+ (NSString *)getFirstLetter:(NSString *)strInput;

/// 判断字符是否是只有字母组成
- (BOOL)isOnlyLatter;

/// 通过传入的字符串数组,返回排好序的新的字符串数组
/// @param stringArray 需要排序的数组
/// @param state 0:升序   1:降序
+ (NSArray *)sortStringFromArray:(NSArray *)stringArray upOrDown:(int)state;

@end

NS_ASSUME_NONNULL_END
