//
//  UIViewController+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//  Copyright (c) 2015年 DNE Technology Co.,Ltd. All rights reserved.
//

#import "UIViewController+UtilityKit.h"

@implementation UIViewController(Utility)

static CGSize appScreenSize;
static UIInterfaceOrientation lastOrientation;

-(CGSize) screenSize{
    UIInterfaceOrientation orientation =[UIApplication sharedApplication].statusBarOrientation;
    if(appScreenSize.width==0 || lastOrientation != orientation){
        appScreenSize = CGSizeMake(0, 0);
        CGSize screenSize = [[UIScreen mainScreen] bounds].size;
        if(orientation == UIDeviceOrientationLandscapeLeft ||orientation == UIDeviceOrientationLandscapeRight){
            appScreenSize.width = screenSize.height;
            appScreenSize.height = screenSize.width;
        }else{
            appScreenSize.width = screenSize.width;
            appScreenSize.height = screenSize.height;
        }
        lastOrientation = orientation;
    }
    return appScreenSize;
}

- (void)orientationChanged:(NSNotification *)note  {
    UIDeviceOrientation o = [[UIDevice currentDevice] orientation];
    if ([self respondsToSelector:@selector(deviceOrientationChanged:)]) {
        [self deviceOrientationChanged:o];
    }
}

-(void)addDeviceOrientationChangedObserver{
    UIDevice *device = [UIDevice currentDevice]; //Get the device object
    [device beginGeneratingDeviceOrientationNotifications]; //Tell it to start monitoring the accelerometer for orientation
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter]; //Get the notification centre for the app
    [nc addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification  object:device];
}

-(void)removeDeviceOrientationChangedObserver{
    NSNotificationCenter *nc = [NSNotificationCenter defaultCenter];
    UIDevice *device = [UIDevice currentDevice]; //Get the device object
    [nc removeObserver:self name:UIDeviceOrientationDidChangeNotification object:device];
}
-(void)deviceOrientationChanged:(UIDeviceOrientation)orientation{}

@end
