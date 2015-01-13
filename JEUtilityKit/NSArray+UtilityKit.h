//
//  NSArray+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSArray(Utility)

/**
 *  数组归档
 *
 *  @param array 需要归档的
 *  @param name  文件名
 *  @param path  路径
 */
- (void)archiveRootToPath:(NSString *)path fileName:(NSString *)name;

/**
 *  反归档
 *
 *  @param path 路径
 *  @param name 文件名
 */
+ (NSArray *)unarchiveToPath:(NSString *)path fileName:(NSString *)name;

@end
