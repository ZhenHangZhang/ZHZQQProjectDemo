
//
//  MainViewController.m
//  ZHZQQProjectDemo
//
//  Created by zhanghangzhen on 16/10/10.
//  Copyright © 2016年 zhanghangzhen. All rights reserved.
//

#import "MainViewController.h"

#import "OneViewController.h"

#import "TwoViewController.h"




@interface MainViewController ()

@end

@implementation MainViewController
- (IBAction)pus:(id)sender {
    
    
    OneViewController *one = [[OneViewController alloc] initWithNibName:@"OneViewController" bundle:nil];
    
    [self.navigationController pushViewController:one animated:YES];
    //    [self.slideMenuController showViewController:one];
    one.title = @"npush";
    
    
    
}
- (IBAction)model:(id)sender {
    
    TwoViewController *one = [[TwoViewController alloc] initWithNibName:@"TwoViewController" bundle:nil];
     [self presentViewController:[[UINavigationController alloc] initWithRootViewController:one] animated:YES completion:nil];
    one.title = @"model";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
