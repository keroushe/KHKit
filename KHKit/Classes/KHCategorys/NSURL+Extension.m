//
//  NSURL+Extension.m
//  Video
//
//  Created by hexs on 2021/3/12.
//  Copyright © 2021 cnest. All rights reserved.
//

#import "NSURL+Extension.h"

@implementation NSURL (Extension)

+ (nullable instancetype)kh_URLWithString:(NSString *)URLString
{
    // 容错处理图片路径包含特殊字符
    NSString *dst_UrlStr = URLString;
    NSString *decodeStr = [URLString stringByRemovingPercentEncoding];
    if (decodeStr)
    {
        NSString *encodeUrlStr = [decodeStr stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
        if (encodeUrlStr)
        {
            dst_UrlStr = encodeUrlStr;
        }
    }
    
    return [NSURL URLWithString:dst_UrlStr];
}

@end
