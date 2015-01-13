//
//  UIView+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-9.
//

#import "UIView+UtilityKit.h"

@implementation UIView(Utility)

@dynamic xPos;
@dynamic yPos;
@dynamic height;
@dynamic width;

- (CGFloat)xPos{
    return self.frame.origin.x;
}

- (CGFloat)yPos{
        return self.frame.origin.y;
}

- (CGFloat)height{
        return self.frame.size.height;
}

- (CGFloat)width{
        return self.frame.size.width;
}
@end
