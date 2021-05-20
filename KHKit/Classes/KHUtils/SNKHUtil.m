//
//  SNKHUtil.m
//  Video
//
//  Created by saina on 2020/11/14.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "SNKHUtil.h"

@implementation SNKHUtil

/// 得到视图在Window上的位置
/// @param view view
+ (CGRect)convertView:(UIView*)view
{
    CGRect rect = view.frame;
    while(view.superview)
    {
        view = view.superview;
        rect.origin.x += view.frame.origin.x;
        rect.origin.y += view.frame.origin.y;
    }
    return rect;
}

/// 比较两个字符串是否相等(判断nil)
+ (BOOL)isEqualstr:(NSString *)str toStr:(NSString *)toStr
{
    if ((str == nil || str.length <= 0) ||
        (toStr == nil || toStr.length <= 0))
    {
        return NO;
    }
    
    return [str isEqualToString:toStr];
}

/// 限制字符长度（自动计算中英文长度）
+ (NSString *)subStringWithText:(NSString *)text maxLength:(NSInteger)maxLength
{
    int length = 0;
    int singleNum = 0;
    int totalNum = 0;
    char *p = (char *)[text cStringUsingEncoding:NSUnicodeStringEncoding];
    for (int i = 0; i < [text lengthOfBytesUsingEncoding:NSUnicodeStringEncoding]; i++) {
        if (*p) {
            length++;
            if (length <= maxLength) {
                totalNum++;
            }
        }
        else {
            if (length <= maxLength) {
                singleNum++;
            }
        }
        p++;
    }
    
    int maxIndex = (totalNum - singleNum) / 2 + singleNum;
    
    if (length > maxLength) {
        text = [NSString stringWithFormat:@"%@...",[text substringToIndex:maxIndex]];
    }
    
    return text;
}

/// 字符串是否全为数字
+ (BOOL)deptNumInputShouldNumber:(NSString *)str
{
    if (str.length == 0) {
        return NO;
    }
    NSString *regex = @"[0-9]*";
    NSPredicate *pred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
    if ([pred evaluateWithObject:str]) {
        return YES;
    }
    return NO;
}

/// 获取根控制器
+ (UIViewController *)getRootViewController
{
    UIWindow* window = [[[UIApplication sharedApplication] delegate] window];
    NSAssert(window, @"The window is empty");
    return window.rootViewController;
}

/// 获取当前最顶层控制器
+ (UIViewController *)getCurrentViewController
{
    UIViewController* currentViewController = [self getRootViewController];
    BOOL runLoopFind = YES;
    while (runLoopFind) {
        if (currentViewController.presentedViewController) {
            currentViewController = currentViewController.presentedViewController;
        } else if ([currentViewController isKindOfClass:[UINavigationController class]]) {
            UINavigationController* navigationController = (UINavigationController* )currentViewController;
            currentViewController = [navigationController.childViewControllers lastObject];
        } else if ([currentViewController isKindOfClass:[UITabBarController class]]) {
            UITabBarController* tabBarController = (UITabBarController* )currentViewController;
            currentViewController = tabBarController.selectedViewController;
        } else {
            NSUInteger childViewControllerCount = currentViewController.childViewControllers.count;
            if (childViewControllerCount > 0) {
                currentViewController = currentViewController.childViewControllers.lastObject;
                return currentViewController;
            } else {
                return currentViewController;
            }
        }
    }
    return currentViewController;
}

/// json串转换成字典/数组
+ (id)arrayWithJsonString:(NSString *)jsonString
{
    if (jsonString == nil) {
        return nil;
    }
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    NSArray *arr = [NSJSONSerialization JSONObjectWithData:jsonData
                                                    options:NSJSONReadingMutableContainers
                                                    error:&err];
    
    if(err) {
        NSLog(@"json解析失败：%@",err);
        return nil;
    }
    return arr;
}

@end
