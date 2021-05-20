//
//  UIButton+Setting.m
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "UIButton+Setting.h"

@implementation UIButton (Setting)

- (void)kh_settingWithframe:(CGRect)frame title:(NSString *)title textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor normalImage:(UIImage *)normalImage clickImage:(UIImage *)clickImage
{
    self.frame = frame;
    [self kh_settingWithtitle:title textfont:textfont textcolor:textcolor normalImage:normalImage clickImage:clickImage];
}

- (void)kh_settingWithtitle:(NSString *)title textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor normalImage:(UIImage *)normalImage clickImage:(UIImage *)clickImage
{
    [self setTitle:title forState:UIControlStateNormal];
    self.titleLabel.font = textfont;
    [self setTitleColor:textcolor forState:UIControlStateNormal];
    if (normalImage) [self setImage:normalImage forState:UIControlStateNormal];
    if (clickImage) [self setImage:clickImage forState:UIControlStateHighlighted];
}

@end
