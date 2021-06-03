//
//  SNKHSecureTextEntryLabel.h
//  KHKit
//
//  Created by hexs on 2021/6/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SNKHSecureTextEntryLabel : UILabel

@property (nonatomic, assign) NSRange secureRange;
@property (nonatomic, assign) BOOL kh_secureTextEntry;
@property (nonatomic, copy, readonly) NSString *kh_originText;
@property (nonatomic, copy, readonly) NSString *kh_secureText;

@end

NS_ASSUME_NONNULL_END
