//
//  UILabel+Setting.h
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Setting)

//设置UILabel内容包裹
- (void)kh_settingLabelWrapWithframe:(CGRect)frame maxSize:(CGSize)maxSize text:(NSString *)text textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor;

//设置固定大小
- (void)kh_settingLabelWithframe:(CGRect)frame text:(NSString *)text textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor;

//不设置UILabel大小
- (void)kh_settingLabeltext:(NSString *)text textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor;

@end
