//
//  UIImage+JXCImage.m
//  JXCDownload
//
//  Created by JiaXiaochao on 2018/8/23.
//  Copyright © 2018年 JiaXiaochao. All rights reserved.
//

#import "UIImage+JXCImage.h"

@implementation UIImage (JXCImage)

+ (UIImage *)imageWithColor:(UIColor *)color
{
    CGRect rect = CGRectMake(0, 0, 10,10);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *img = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return img;
}

@end
