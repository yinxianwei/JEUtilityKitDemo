//
//  UILabel+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import "UILabel+UtilityKit.h"

@implementation UILabel(Utility)

+ (instancetype)labelWithFrame:(CGRect)frame{
    UILabel *label = [[UILabel alloc]initWithFrame:frame];
    label.backgroundColor = [UIColor clearColor];
    return label;
}

@end
