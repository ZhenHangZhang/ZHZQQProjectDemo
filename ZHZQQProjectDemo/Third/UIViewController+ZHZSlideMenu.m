
//
//  UIViewController+ZHZSlideMenu.m
//  ZHZQQProjectDemo
//
//  Created by zhanghangzhen on 16/10/10.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "UIViewController+ZHZSlideMenu.h"

@implementation UIViewController (ZHZSlideMenu)

- (ZHZSlideMenuController *)slideMenuController
{
    UIViewController *iter = self.parentViewController;
    while (iter) {
        if ([iter isKindOfClass:[ZHZSlideMenuController class]]) {
            return (ZHZSlideMenuController *)iter;
        } else if (iter.parentViewController && iter.parentViewController != iter) {
            iter = iter.parentViewController;
        } else {
            iter = nil;
        }
    }
    return nil;
}

@end
