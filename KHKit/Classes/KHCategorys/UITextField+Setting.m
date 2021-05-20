//
//  UITextField+Setting.m
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "UITextField+Setting.h"

@implementation UITextField (Setting)

//常规设置
- (void)kh_settingWithframe:(CGRect)frame textAlignment:(NSTextAlignment)textAlignment placeholder:(NSString *)placeholder returnKeyType:(UIReturnKeyType)returnKeyType delegate:(id<UITextFieldDelegate>)delegate font:(UIFont *)font textColor:(UIColor *)textColor background:(UIImage *)background
{
    self.frame = frame;
    [self kh_settingWithtextAlignment:textAlignment placeholder:placeholder returnKeyType:returnKeyType delegate:delegate font:font textColor:textColor background:background];
}

//常规设置
- (void)kh_settingWithtextAlignment:(NSTextAlignment)textAlignment placeholder:(NSString *)placeholder returnKeyType:(UIReturnKeyType)returnKeyType delegate:(id<UITextFieldDelegate>)delegate font:(UIFont *)font textColor:(UIColor *)textColor background:(UIImage *)background
{
    self.textAlignment = textAlignment;
    self.placeholder = placeholder;
    self.returnKeyType = returnKeyType;
    self.delegate = delegate;
    self.font = font;
    self.textColor = textColor;
    self.background = background;
    self.borderStyle = UITextBorderStyleNone;
    self.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
}

//设置TextField左侧空视图,右移输入
- (void)kh_settingHeadStyle
{
    UIView * leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 5, 20)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
}

//设置TextField左侧空视图,右移输入
- (void)kh_settingHeadStyleWithSize:(CGSize)size
{
    UIView * leftView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    self.leftView = leftView;
    self.leftViewMode = UITextFieldViewModeAlways;
}

@end
