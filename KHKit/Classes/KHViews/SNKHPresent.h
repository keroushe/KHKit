//
//  SNKHPresent.h
//  KHKit
//
//  Created by hexs on 2021/5/26.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SNKHPresentDelegate <NSObject>
@optional
- (void)startAcceptDataRefreshUI;
- (void)endAcceptDataRefreshUIWithsuccess:(BOOL)success;

@end

@interface SNKHPresent : NSObject

@property (nonatomic, weak, readonly) id<SNKHPresentDelegate> delegate;
@property (nonatomic, weak, readonly) UINavigationController *navigationController;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithNavigationController:(UINavigationController *)navigationController Delegate:(id<SNKHPresentDelegate>)delegate;

#pragma mark - need override
- (void)startAcceptAllData;

@end

NS_ASSUME_NONNULL_END
