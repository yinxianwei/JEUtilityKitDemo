//
//  UIColor+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-8.
//

#import "UIColor+UtilityKit.h"

@implementation UIColor(Utility)

- (UIImage *)createImageWithSize:(CGRect)rect
{
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [self CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}

- (UIImage *)createImage{
    return [self createImageWithSize:CGRectMake(0, 0, 1, 1)];
}

@end
