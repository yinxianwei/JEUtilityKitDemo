//
//  UIImage+UtilityKit.h
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImage(Utility)
/*!
 *  获取网络图片Size
 *
 *  @param imageURL 图片地址  string|url
 *
 */
+(CGSize)downloadImageSizeWithURL:(id)imageURL;




@end
