//
//  UITextField+Setting.h
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Setting)

//常规设置
- (void)kh_settingWithframe:(CGRect)frame textAlignment:(NSTextAlignment)textAlignment placeholder:(NSString *)placeholder returnKeyType:(UIReturnKeyType)returnKeyType delegate:(id<UITextFieldDelegate>)delegate font:(UIFont *)font textColor:(UIColor *)textColor background:(UIImage *)background;

//常规设置
- (void)kh_settingWithtextAlignment:(NSTextAlignment)textAlignment placeholder:(NSString *)placeholder returnKeyType:(UIReturnKeyType)returnKeyType delegate:(id<UITextFieldDelegate>)delegate font:(UIFont *)font textColor:(UIColor *)textColor background:(UIImage *)background;

//设置TextField左侧空视图,右移输入
- (void)kh_settingHeadStyle;

//设置TextField左侧空视图,右移输入
- (void)kh_settingHeadStyleWithSize:(CGSize)size;

@end
