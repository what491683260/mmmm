//
//  UIColor+HWCategory.h
//  customer
//
//  Created by leyousxz on 2020/10/19.
//  Copyright © 2020 sunxingzhen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (HWCategory)

/*
 主题蓝色
 */
UIColor *HWThemeBlueColor(void);

/*
 主题蓝色 透明状态20%
 */
UIColor *HWThemeBlueColorDisable(void);

/*
 错误红色提示色
 */
UIColor *HWErrorRedColor(void);

/*
 错误红色提示色 透明状态20%
 */
UIColor *HWErrorRedColorDisable(void);

/*
 纯黑色，1级标题 重要信息等颜色
 */
UIColor *HWOneBlackColor(void);

/*
 黑色浅一些，菜单面板、底部bar颜色
 */
UIColor *HWBarBlackColor(void);

/*
 黑色浅一些，二级页面tab、titlebar颜色
 */
UIColor *HWTitleBlackColor(void);

/*
 灰蓝色，次要信息、提示说明文字颜色
 */
UIColor *HWPromptGrayColor(void);

/*
 灰色，非重要信息、引导文章、最弱一级文字颜色
 */
UIColor *HWGrayColor(void);

/*
 强分割线颜色，用于标题栏、tab栏
 */
UIColor *HWStrongSeqLineColor(void);

/*
 弱分割线颜色，用于列表
 */
UIColor *HWWeakSeqLineColor(void);

/*
 深灰色背景颜色
 */
UIColor *HWStrongBgColor(void);

/*
浅灰色背景颜色
 */
UIColor *HWWeakBgColor(void);

/*
纯白，用户白色背景、反色文字颜色
 */
UIColor *HWWhiteColor(void);


+ (UIColor *)colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alphaValue;
+ (UIColor *)colorWithHex:(NSInteger)hexValue;

@end

NS_ASSUME_NONNULL_END
