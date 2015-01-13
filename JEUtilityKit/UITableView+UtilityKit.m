//
//  UITableView+UtilityKit.m
//  JEUtilityKitDemo
//
//  Created by 尹现伟 on 15-1-7.
//

#import "UITableView+UtilityKit.h"

@implementation UITableView(Utility)
- (void)clearLine{
    UIView *view =[ [UIView alloc]init];
    view.backgroundColor = [UIColor clearColor];
    [self setTableFooterView:view];
}

- (void)clearBackground{
    self.backgroundColor = [UIColor clearColor];
    self.backgroundView = nil;
}
@end
