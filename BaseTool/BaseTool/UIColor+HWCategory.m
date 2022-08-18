//
//  UIColor+HWCategory.m
//  customer
//
//  Created by leyousxz on 2020/10/19.
//  Copyright © 2020 sunxingzhen. All rights reserved.
//

#import "UIColor+HWCategory.h"

@implementation UIColor (HWCategory)

+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue {
    
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alphaValue];
}

+ (UIColor *)colorWithHex:(NSInteger)hexValue {
    
    return [UIColor colorWithHex:hexValue alpha:1.0];
}
#pragma mark customColor

UIColor *HWThemeBlueColor(void) {
    return [UIColor colorWithHex:0x008FD5];
}

UIColor *HWThemeBlueColorDisable(void) {
    return [UIColor colorWithHex:0x008FD5 alpha:0.2];
}

UIColor *HWErrorRedColor(void) {
    return [UIColor colorWithHex:0xFF504E];
}

UIColor *HWErrorRedColorDisable(void) {
    return [UIColor colorWithHex:0xFF504E alpha:0.2];
}

UIColor *HWOneBlackColor(void) {
    return [UIColor colorWithHex:0x000000];
}

UIColor *HWBarBlackColor(void) {
    return [UIColor colorWithHex:0x333333];
}

UIColor *HWTitleBlackColor(void) {
    return [UIColor colorWithHex:0x666666];
}

UIColor *HWPromptGrayColor(void) {
    return [UIColor colorWithHex:0x97A2B2];
}

UIColor *HWGrayColor(void) {
    return [UIColor colorWithHex:0xCCCCCC];
}

UIColor *HWSeqLineColor(void) {
    return [UIColor colorWithHex:0xE6E6E6];
}

UIColor *HWWeakSeqLineColor(void) {
    return [UIColor colorWithHex:0xEEEEEE];
}

UIColor *HWStrongBgColor(void) {
    return [UIColor colorWithHex:0xF5F5F5];
}

UIColor *HWWeakBgColor(void) {
    return [UIColor colorWithHex:0xF8F8F8];
}

UIColor *HWWhiteColor(void) {
    return [UIColor colorWithHex:0xFFFFFF];
}
@end
