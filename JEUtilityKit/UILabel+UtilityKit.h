//
//  UILabel+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UILabel(Utility)

/*!
 *  创建UILabel（默认背景为透明，为适配iOS6和iOS7） PS.iOS6下创建的Label背景色默认为白色
 *
 *  @param frame frame
 *
 */
+ (instancetype)labelWithFrame:(CGRect)frame;
@end
