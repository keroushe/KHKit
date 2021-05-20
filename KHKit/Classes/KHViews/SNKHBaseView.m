//
//  SNKHBaseView.m
//  Video
//
//  Created by saina on 2020/11/12.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "SNKHBaseView.h"

@implementation SNKHBaseView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self commonInit];
    }
    return self;
}

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    [self commonInit];
}

- (void)commonInit
{
    _viewWidth = self.bounds.size.width;
    _viewHeight = self.bounds.size.height;
    
    [self initSubViews];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (_viewWidth != self.bounds.size.width ||
        _viewHeight != self.bounds.size.height)
    {
        _viewWidth = self.bounds.size.width;
        _viewHeight = self.bounds.size.height;
        
        [self layoutSubviewsFitHeightWidth];
    }
}

#pragma mark - method need override
// 子类重写添加子控件
- (void)initSubViews
{
}

// 子类重写进行子控件layout
- (void)layoutSubviewsFitHeightWidth
{
}

@end
