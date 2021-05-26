//
//  SNKHPresent.m
//  KHKit
//
//  Created by hexs on 2021/5/26.
//

#import "SNKHPresent.h"

@implementation SNKHPresent

- (instancetype)initWithNavigationController:(UINavigationController *)navigationController
{
    self = [super init];
    if (self) {
        _navigationController = navigationController;
    }
    return self;
}

@end
