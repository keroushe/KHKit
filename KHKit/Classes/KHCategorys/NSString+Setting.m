//
//  NSString+Setting.m
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "NSString+Setting.h"

@implementation NSString (Setting)

/// 根据内容得到文字大小
/// @param maxSize 最大大小
/// @param textfont 字体
- (CGSize)kh_GetSizeWithmaxSize:(CGSize)maxSize textfont:(UIFont *)textfont
{
    if (textfont == nil)
    {
        return maxSize;
    }
    
    // 计算文字所占区域
    CGSize textSize = [self boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName : textfont} context:nil].size;
    return textSize;
}

/// 传入字符串,返回大写的首字母
/// @param strInput 字符串
+ (NSString *)getFirstLetter:(NSString *)strInput
{
    NSInteger length = 0;
    NSInteger location = 0;
    if (strInput.length > 0)
    {
        location = 0;
        length = 1;
    }
    else
    {
        return @"";
    }
    
    NSRange range = NSMakeRange(location, length);
    NSString *nameString = [strInput substringWithRange:range];
    if ([nameString length])
    {
        if (([nameString hasPrefix:@" "]) && ([nameString hasSuffix:@" "]))
        {
            nameString = [nameString stringByReplacingOccurrencesOfString:@" " withString:@""];
        }
        
        NSMutableString *ms = [[NSMutableString alloc] initWithString:nameString];
        if (ms.length < 1) {
            return @"";
        }
        
        CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformMandarinLatin, NO);
        CFStringTransform((__bridge CFMutableStringRef)ms, 0, kCFStringTransformStripDiacritics, NO);
        NSString *letterString = @"";
        NSArray *pyArray = [ms componentsSeparatedByString:@" "];
        if(pyArray && pyArray.count > 0)
        {
            letterString = [pyArray.firstObject substringToIndex:1];
            return [letterString uppercaseString];
        }
        return @"";
    }
    return @"";
}

/// 判断字符是否是只有字母组成
- (BOOL)isOnlyLatter
{
    if (self.length == 0)
    {
        return NO;
    }
    
    for (NSInteger i = 0; i < self.length; i++)
    {
        unichar ch = [self characterAtIndex:i];
        if (!(((ch >= 'a') && (ch <= 'z')) || ((ch >= 'A') && (ch <= 'Z'))) || (ch == ' ')){ //0=48
            return NO;
        }
    }
    return YES;
}

/// 通过传入的字符串数组,返回排好序的新的字符串数组
/// @param stringArray 需要排序的数组
/// @param state 0:升序   1:降序
+ (NSArray *)sortStringFromArray:(NSArray *)stringArray upOrDown:(int)state
{
    NSStringCompareOptions comparisonOptions = NSCaseInsensitiveSearch|NSWidthInsensitiveSearch|NSForcedOrderingSearch;
    
    NSComparator sort = ^(NSString *obj1,NSString *obj2) {
        
        NSRange range = NSMakeRange(0,obj1.length);
        if (state == 0)
        {
            return [obj1 compare:obj2 options:comparisonOptions range:range];
        }
        else
        {
            return [obj2 compare:obj1 options:comparisonOptions range:range];
        }
    };
    return [stringArray sortedArrayUsingComparator:sort];
}

@end
