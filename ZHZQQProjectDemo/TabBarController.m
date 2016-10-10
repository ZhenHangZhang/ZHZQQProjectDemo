//
//  TabBarController.m
//  ZHZQQProjectDemo
//
//  Created by zhanghangzhen on 16/10/10.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "TabBarController.h"
#import "MainViewController.h"
#import "ZHZSlideMenuController.h"



@interface TabBarController ()<ZHZContentViewControllerDelegate>

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    MainViewController *contentViewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    contentViewController.title = @"one";
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:contentViewController];
    MainViewController *contentViewController1 = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    contentViewController1.title = @"two";
    UINavigationController *navigationController1 = [[UINavigationController alloc] initWithRootViewController:contentViewController1];
    MainViewController *contentViewController2 = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    contentViewController2.title = @"three";
    UINavigationController *navigationController2 = [[UINavigationController alloc] initWithRootViewController:contentViewController2];
    self.viewControllers = @[navigationController,navigationController1,navigationController2];

}

- (UINavigationController *)zhz_navigationController {
    return self.selectedViewController;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
