//
//  NSArray+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import "NSArray+UtilityKit.h"

@implementation NSArray(Utility)

- (void)archiveRootToPath:(NSString *)path fileName:(NSString *)name{
    if (path.length == 0 || name.length == 0) {
        return;
    }
    NSString *filename = [path stringByAppendingPathComponent:name];
    [NSKeyedArchiver archiveRootObject:self toFile:filename];
}

+ (NSArray *)unarchiveToPath:(NSString *)path fileName:(NSString *)name{
    if (path.length == 0 || name.length == 0) {
        return nil;
    }
    NSString *filename = [path stringByAppendingPathComponent:name];
    return [NSKeyedUnarchiver unarchiveObjectWithFile:filename];
}

@end
