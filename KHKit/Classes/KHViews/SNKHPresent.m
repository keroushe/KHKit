//
//  SNKHPresent.m
//  KHKit
//
//  Created by hexs on 2021/5/26.
//

#import "SNKHPresent.h"

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

@end
