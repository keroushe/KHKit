//
//  SNKHPresent.h
//  KHKit
//
//  Created by hexs on 2021/5/26.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SNKHPresent : NSObject

@property (nonatomic, weak) UINavigationController *navigationController;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithNavigationController:(UINavigationController *)navigationController;

@end

NS_ASSUME_NONNULL_END
