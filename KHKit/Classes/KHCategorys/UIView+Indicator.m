//
//  UIView+Indicator.m
//  SAIAppUser
//
//  Created by He Kerous on 2019/7/15.
//  Copyright © 2019 golfy.xiong. All rights reserved.
//

#import "UIView+Indicator.h"
#import <objc/runtime.h>

@implementation UIView (Indicator)

- (UIActivityIndicatorView *)kh_activityView
{
    UIActivityIndicatorView *view = objc_getAssociatedObject(self, _cmd);
    if (!view) {
        view = [[UIActivityIndicatorView alloc] initWithFrame:CGRectMake((self.bounds.size.width - 20)/2, (self.bounds.size.height - 20)/2, 20, 20)];
        view.activityIndicatorViewStyle = UIActivityIndicatorViewStyleGray;
        view.hidesWhenStopped = YES;
        view.hidden = YES;
        [view startAnimating];
        [self addSubview:view];
        
        [self setKh_activityView:view];
    }
    view.frame = CGRectMake((self.bounds.size.width - 20)/2, (self.bounds.size.height - 20)/2, 20, 20);
    return view;
}

- (void)setKh_activityView:(UIActivityIndicatorView *)kh_activityView
{
    objc_setAssociatedObject(self, @selector(kh_activityView), kh_activityView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
