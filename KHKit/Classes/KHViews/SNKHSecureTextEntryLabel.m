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
    
    if (_secureRange.location == NSNotFound)
    {
        NSMutableString *secureText = [[NSMutableString alloc] init];
        for (int i = 0; i < _kh_originText.length; ++i)
        {
            [secureText appendString:@"•"];
        }
        _kh_secureText = secureText;
    }
    else
    {
        NSMutableString *secureText = [[NSMutableString alloc] init];
        for (int i = 0; i < _kh_originText.length; ++i)
        {
            if (i >= _secureRange.location && i < (_secureRange.location + _secureRange.length))
            {
                [secureText appendString:@"•"];
            }
            else
            {
                [secureText appendFormat:@"%c", [_kh_originText characterAtIndex:i]];
            }
        }
        _kh_secureText = secureText;
    }
    
    [self setKh_secureTextEntry:self.kh_secureTextEntry];
}

- (void)setKh_secureTextEntry:(BOOL)kh_secureTextEntry
{
    _kh_secureTextEntry = kh_secureTextEntry;
    [super setText:(_kh_secureTextEntry ? _kh_secureText : _kh_originText)];
}

@end
