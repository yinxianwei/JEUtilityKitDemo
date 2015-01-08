//
//  NSDictionary+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-8.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "NSDictionary+UtilityKit.h"

@implementation NSDictionary(Utility)

+ (NSDictionary *)infoDictionary{
    return [[NSBundle mainBundle] infoDictionary];
}
@end
