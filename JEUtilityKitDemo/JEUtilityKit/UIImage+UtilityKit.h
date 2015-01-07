//
//  UIImage+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImage(Utility)
/*!
 *  获取网络图片大小
 *
 *  @param imageURL 图片地址  string|url
 *
 *  @return
 */
+(CGSize)downloadImageSizeWithURL:(id)imageURL;

@end
