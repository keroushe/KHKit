//
//  SNKHSecureTextEntryLabel.m
//  KHKit
//
//  Created by hexs on 2021/6/3.
//

#import "SNKHSecureTextEntryLabel.h"

@implementation SNKHSecureTextEntryLabel

- (void)setText:(NSString *)text
{
    _kh_originText = text;
    
    // 生成密文
    NSMutableString *secureText = [[NSMutableString alloc] init];
    for (int i = 0; i < _kh_originText.length; ++i)
    {
        [secureText appendString:@"•"];
    }
    _kh_secureText = secureText;
    
    [self setKh_secureTextEntry:self.kh_secureTextEntry];
}

- (void)setKh_secureTextEntry:(BOOL)kh_secureTextEntry
{
    _kh_secureTextEntry = kh_secureTextEntry;
    [super setText:(_kh_secureTextEntry ? _kh_secureText : _kh_originText)];
}

@end
