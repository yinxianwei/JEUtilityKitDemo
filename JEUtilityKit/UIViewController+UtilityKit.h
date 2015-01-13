//
//  UIViewController+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIViewController(Utility)
/**
 *  获取当前屏幕大小
 *
 */
-(CGSize)screenSize;

/**
 *  添加屏幕旋转通知，屏幕旋转自动回调deviceOrientationChanged:
 */
-(void)addDeviceOrientationChangedObserver;

/**
 *  非ARC在dealloc移除通知
 */
-(void)removeDeviceOrientationChangedObserver;

/**
 *  旋转回调方法
 *
 *  @param orientation 屏幕方向
 */
-(void)deviceOrientationChanged:(UIDeviceOrientation)orientation;

@end
