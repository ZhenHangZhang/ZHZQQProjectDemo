//
//  ZHZSlideMenuController.h
//  ZHZQQProjectDemo
//
//  Created by zhanghangzhen on 16/10/10.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZHZContentViewControllerDelegate <NSObject>
- (UINavigationController *)zhz_navigationController;
@end




@interface ZHZSlideMenuController : UIViewController

@property (nonatomic, strong) UIViewController *leftMenuViewController;
@property (nonatomic, strong) UIViewController *contentViewController;
/**
 *  是否缩放内容视图 默认YES
 */
@property (nonatomic, assign) IBInspectable BOOL scaleContent;

/**
 *  菜单打开时原来内容页露在侧边的最大宽， 如果有缩放则指缩放完成之后的
 */
@property (nonatomic,assign) CGFloat contentViewVisibleWidth;

- (id)initWithContentViewController:(UIViewController *)contentViewController
             leftMenuViewController:(UIViewController *)leftMenuViewController;

- (void)showViewController:(UIViewController *)viewController;
- (void)hideMenu;
- (void)showMenu;


@end
