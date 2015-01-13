//
//  NSDictionary+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-8.
//

#import "NSDictionary+UtilityKit.h"

@implementation NSDictionary(Utility)

+ (NSDictionary *)infoDictionary{
    return [[NSBundle mainBundle] infoDictionary];
}
@end
