//
//  UIColor+JXCColor.m
//  JXCDownload
//
//  Created by JiaXiaochao on 2018/8/23.
//  Copyright © 2018年 JiaXiaochao. All rights reserved.
//

#import "UIColor+JXCColor.h"

@implementation UIColor (JXCColor)

+ (UIColor *)colorWithHex:(int)hex
{
    return [UIColor colorWithHex:hex alpha:1.0f];
}

+ (UIColor *)colorWithHex:(int)hex alpha:(CGFloat)alpha
{
    return [UIColor colorWithRed:((float)((hex & 0xFF0000) >> 16))/255.0
                           green:((float)((hex & 0xFF00) >> 8))/255.0
                            blue:((float)(hex & 0xFF))/255.0 alpha:alpha];
}

+ (UIColor *)colorWithHexString:(NSString *)hex
{
    return [UIColor colorWithHexString:hex alpha:1.0f];
}

+ (UIColor *)colorWithHexString:(NSString *)hex alpha:(CGFloat)alpha {
    if ([hex isEqualToString:@""]) {
        return [UIColor whiteColor];
    }
    NSString *cString = [[hex stringByTrimmingCharactersInSet:
                          [NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6)
        return [UIColor whiteColor];
    if ([cString hasPrefix:@"0X"])
        cString = [cString substringFromIndex:2];
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return [UIColor whiteColor];
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:alpha];
    
}
@end
