//
//  UIButton+Setting.h
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Setting)

- (void)kh_settingWithframe:(CGRect)frame title:(NSString *)title textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor normalImage:(UIImage *)normalImage clickImage:(UIImage *)clickImage;

- (void)kh_settingWithtitle:(NSString *)title textfont:(UIFont *)textfont textcolor:(UIColor *)textcolor normalImage:(UIImage *)normalImage clickImage:(UIImage *)clickImage;

@end
