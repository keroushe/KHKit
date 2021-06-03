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
    [super setText:text];
    
    _kh_originText = text;
    
    NSMutableString *secureText = [[NSMutableString alloc] init];
    for (int i = 0; i < _kh_originText.length; ++i)
    {
        [secureText appendString:@"•"];
    }
    _kh_secureText = secureText;
}

- (void)setKh_secureTextEntry:(BOOL)kh_secureTextEntry
{
    _kh_secureTextEntry = kh_secureTextEntry;
    [super setText:(_kh_secureTextEntry ? _kh_secureText : _kh_originText)];
}

@end
