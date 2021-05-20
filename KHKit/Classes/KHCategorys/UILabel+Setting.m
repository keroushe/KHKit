//
//  UILabel+Setting.m
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "UILabel+Setting.h"
#import "NSString+Setting.h"

@implementation UILabel (Setting)

//设置UILabel内容包裹
- (void)kh_settingLabelWrapWithframe:(CGRect)frame maxSize:(CGSize)maxSize text:(NSString *)text textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor
{
    //计算文字所占区域
    CGSize textSize = [text kh_GetSizeWithmaxSize:maxSize textfont:textfont];
    CGRect textframe = CGRectMake(frame.origin.x, frame.origin.y, textSize.width + 5, textSize.height + 2);
    [self kh_settingLabelWithframe:textframe text:text textfont:textfont textcolor:textcolor];
}

//设置固定大小
- (void)kh_settingLabelWithframe:(CGRect)frame text:(NSString *)text textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor
{
    self.frame = frame;
    [self kh_settingLabeltext:text textfont:textfont textcolor:textcolor];
}

//不设置UILabel大小
- (void)kh_settingLabeltext:(NSString *)text textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor
{
    self.text = text;
    self.textAlignment = NSTextAlignmentLeft;
    self.font = textfont;
    self.textColor = textcolor;
    self.backgroundColor = [UIColor clearColor];
}

@end
