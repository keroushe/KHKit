//
//  UIView+KHLayout.m
//  KHKit
//
//  Created by hexs on 2021/5/20.
//

#import "UIView+KHLayout.h"

@implementation UIView (KHLayout)

- (CGFloat)kh_x {
    return self.frame.origin.x;
}

- (void)setKh_x:(CGFloat)kh_x
{
    CGRect newFrame   = self.frame;
    newFrame.origin.x = kh_x;
    self.frame        = newFrame;
}

- (CGFloat)kh_y
{
    return self.frame.origin.y;
}

- (void)setKh_y:(CGFloat)kh_y
{
    CGRect newFrame   = self.frame;
    newFrame.origin.y = kh_y;
    self.frame        = newFrame;
}

- (CGFloat)kh_width
{
    return CGRectGetWidth(self.bounds);
}

- (void)setKh_width:(CGFloat)kh_width
{
    CGRect newFrame     = self.frame;
    newFrame.size.width = kh_width;
    self.frame          = newFrame;
}

- (CGFloat)kh_height
{
    return CGRectGetHeight(self.bounds);
}

- (void)setKh_height:(CGFloat)kh_height
{
    CGRect newFrame      = self.frame;
    newFrame.size.height = kh_height;
    self.frame           = newFrame;
}


- (CGFloat)kh_top
{
    return self.frame.origin.y;
}

- (void)setKh_top:(CGFloat)kh_top
{
    CGRect newFrame   = self.frame;
    newFrame.origin.y = kh_top;
    self.frame        = newFrame;
}

- (CGFloat)kh_bottom
{
    return self.frame.origin.y + self.frame.size.height;
}

- (void)setKh_bottom:(CGFloat)kh_bottom
{
    CGRect newFrame   = self.frame;
    newFrame.origin.y = kh_bottom - self.frame.size.height;
    self.frame        = newFrame;
}

- (CGFloat)kh_left
{
    return self.frame.origin.x;
}

- (void)setKh_left:(CGFloat)kh_left
{
    CGRect newFrame   = self.frame;
    newFrame.origin.x = kh_left;
    self.frame        = newFrame;
}

- (CGFloat)kh_right
{
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setKh_right:(CGFloat)kh_right
{
    CGRect newFrame   = self.frame;
    newFrame.origin.x = kh_right - self.frame.size.width;
    self.frame        = newFrame;
}


- (CGFloat)kh_centerX
{
    return self.center.x;
}

- (void)setKh_centerX:(CGFloat)kh_centerX
{
    CGPoint newCenter = self.center;
    newCenter.x       = kh_centerX;
    self.center       = newCenter;
}

- (CGFloat)kh_centerY
{
    return self.center.y;
}

- (void)setKh_centerY:(CGFloat)kh_centerY
{
    CGPoint newCenter = self.center;
    newCenter.y       = kh_centerY;
    self.center       = newCenter;
}

- (CGPoint)kh_origin
{
    return self.frame.origin;
}

- (void)setKh_origin:(CGPoint)kh_origin
{
    CGRect newFrame = self.frame;
    newFrame.origin = kh_origin;
    self.frame      = newFrame;
}

- (CGSize)kh_size
{
    return self.frame.size;
}

- (void)setKh_size:(CGSize)kh_size
{
    CGRect newFrame = self.frame;
    newFrame.size   = kh_size;
    self.frame      = newFrame;
}

@end
