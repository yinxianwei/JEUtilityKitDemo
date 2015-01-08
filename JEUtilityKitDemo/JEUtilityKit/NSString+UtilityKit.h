//
//  NSString+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString(Utility)

/**
 *  十六进制颜色转换
 *
 *  @return 颜色
 */
-(UIColor *)Color;

/**
 *  去除指定的字符
 *
 *  @param aString 要删除的字符
 *
 *  @return 返回删除后的结果
 */
-(NSString *)removeString:(NSString *)aString;

/**
 *  获取软件的Bundleidentifier
 *
 *  @return BundleID
 */
+(NSString *)fetchBundleidentifier;

/**
 *  获取当前软件版本
 *
 *  @return 软件版本
 */
+(NSString *)fetchBundleVersion;

/**
 *  根据字符获取长度
 *
 *  @param font 字体大小
 *  @param size view的size
 *
 *  @return CGSize
 */

-(CGSize)stringSizeWithFont:(UIFont *)font size:(CGSize)size;
-(CGSize)stringSizeWithFont:(UIFont *)font size:(CGSize)size breakmode:(NSLineBreakMode)model;

/**
 *  判断路径是否存在
 */
- (BOOL)isFileExist;

/**
 *  字符串归档
 *
 *  @param path 路径
 *  @param name 名字
 */
- (void)archiveRootToPath:(NSString *)path fileName:(NSString *)name;

/**
 *  字符串反归档
 *
 *  @param path 路径
 *  @param name 名字
 *
 *  @return NSString
 */

+ (NSString *)unarchiveToPath:(NSString *)path fileName:(NSString *)name;

/*
 *  是否为身份证
 */
- (BOOL)isIdentity;

/*!
 *  计算中英混合字符个数
 *
 *  @return 长度   example: 123发  return 5 ; 1234 return 4;
 */
-  (int)convertToInt;
@end
