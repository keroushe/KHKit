//
//  SNKHPresent.m
//  KHKit
//
//  Created by hexs on 2021/5/26.
//

#import "SNKHPresent.h"

@implementation NSObject (SNKHPresentDelegate)
- (void)startAcceptDataRefreshUI {}
- (void)endAcceptDataRefreshUIWithsuccess:(BOOL)success {}
@end

@implementation SNKHPresent

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController Delegate:(id<SNKHPresentDelegate>)delegate
{
    self = [super init];
    if (self) {
        _navigationController = navigationController;
        _delegate = delegate;
    }
    return self;
}

- (void)startAcceptAllData
{// 子类重写
}

@end
