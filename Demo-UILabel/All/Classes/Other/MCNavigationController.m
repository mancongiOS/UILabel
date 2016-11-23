//
//  MCNavigationController.m
//  Demo-图片放大
//
//  Created by quhaola on 16/5/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MCNavigationController.h"

@interface MCNavigationController ()

@end

@implementation MCNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationBar * navigationBar = [UINavigationBar appearance];
    
    [navigationBar setBackgroundColor:[UIColor colorWithRed:0 / 255.0 green:0 / 255.0 blue:255 / 255.0 alpha:1.0]];
    
    //设置导航条文字 大小和颜色
    [navigationBar setTitleTextAttributes:@{NSFontAttributeName : [UIFont systemFontOfSize:20.0f],NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
    [navigationBar setBackgroundImage:[UIImage imageNamed:@"bg_nav"] forBarMetrics:UIBarMetricsDefault];
}

@end
