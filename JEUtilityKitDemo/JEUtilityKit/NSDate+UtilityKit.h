//
//  NSDate+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate(Utility)
/*!
 *  时间大小判断
 *
 *  @param date 判断 self 是否大于 date
 */
- (BOOL)isBiggerDate:(NSDate *)date;

/*!
 *  时间格式化
 *
 *  @return 今天:(19:00)  昨天:(昨天:19:00) 本周:(星期一) 其它:(2014-08-01 19:00)
 */
- (NSString *)showTime;

@end
