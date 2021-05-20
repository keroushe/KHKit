//
//  UIView+KHLayout.h
//  KHKit
//
//  Created by hexs on 2021/5/20.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (KHLayout)

@property (nonatomic) CGFloat kh_x;
@property (nonatomic) CGFloat kh_y;
@property (nonatomic) CGFloat kh_width;
@property (nonatomic) CGFloat kh_height;

@property (nonatomic) CGFloat kh_top;
@property (nonatomic) CGFloat kh_bottom;
@property (nonatomic) CGFloat kh_left;
@property (nonatomic) CGFloat kh_right;

@property (nonatomic) CGFloat kh_centerX;
@property (nonatomic) CGFloat kh_centerY;

@property (nonatomic) CGPoint kh_origin;
@property (nonatomic) CGSize  kh_size;

@end

NS_ASSUME_NONNULL_END
