//
//  SNKHBaseTableViewCell.m
//  Video
//
//  Created by saina on 2020/11/13.
//  Copyright © 2020 cnest. All rights reserved.
//

#import "SNKHBaseTableViewCell.h"

@implementation SNKHBaseTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    for (UIView *view in self.subviews) {
        if([view isKindOfClass:[UIScrollView class]]) {
            ((UIScrollView *)view).delaysContentTouches = NO; // Remove touch delay for iOS 7
            break;
        }
    }
    self.selectionStyle = UITableViewCellSelectionStyleNone;
    return self;
}

+ (NSString *)cellIdentifer
{
    return NSStringFromClass([self class]);
}

@end
