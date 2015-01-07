//
//  UIAlertView+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "UIAlertView+UtilityKit.h"

@implementation UIAlertView(Utility)

+(void)showMessage:(NSString *)string{
    UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"温馨提示" message:string delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil];
    [alertView show];
}
@end
