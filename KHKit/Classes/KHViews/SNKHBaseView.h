//
//  SNKHBaseView.h
//  Video
//
//  Created by saina on 2020/11/12.
//  Copyright © 2020 cnest. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SNKHBaseView : UIView

@property (nonatomic,assign) CGFloat viewWidth;
@property (nonatomic,assign) CGFloat viewHeight;

#pragma mark - method need override
// 子类重写添加子控件
- (void)initSubViews;
// 子类重写进行子控件layout
- (void)layoutSubviewsFitHeightWidth;

@end

NS_ASSUME_NONNULL_END
