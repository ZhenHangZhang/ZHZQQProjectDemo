//
//  OneViewController.m
//  ZHZQQProjectDemo
//
//  Created by zhanghangzhen on 16/10/10.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "OneViewController.h"
#import "TwoViewController.h"

#import "UIViewController+ZHZSlideMenu.h"




@interface OneViewController ()

@end

@implementation OneViewController
- (IBAction)pu:(id)sender {
    
    TwoViewController *one = [[TwoViewController alloc] initWithNibName:@"TwoViewController" bundle:nil];
    
    [self.navigationController pushViewController:one animated:YES];
//    [self.slideMenuController showViewController:one];
    one.title = @"navpush";
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",self.navigationController.description);
    

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
