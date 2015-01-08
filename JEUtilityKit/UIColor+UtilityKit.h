//
//  UIColor+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-8.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIColor(Utility)

/**
 *  新建UIImage，默认size(0,0,1,1)
 *
 */
- (UIImage *)createImage;
- (UIImage *)createImageWithSize:(CGRect)size;

@end
