//
//  UIColor+JXCColor.h
//  JXCDownload
//
//  Created by JiaXiaochao on 2018/8/23.
//  Copyright © 2018年 JiaXiaochao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JXCColor)

+ (UIColor *)colorWithHex:(int)hex;

+ (UIColor *)colorWithHex:(int)hex alpha:(CGFloat)alpha;

+ (UIColor *)colorWithHexString:(NSString *)color;

+ (UIColor *)colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
