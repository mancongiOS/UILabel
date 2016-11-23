//
//  MCTabbarController.m
//  Demo-图片放大
//
//  Created by quhaola on 16/5/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "MCTabbarController.h"

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"

#import "MCNavigationController.h"


@interface MCTabbarController ()

@end

@implementation MCTabbarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addAllViewControllers];
    
    [self setItems];
}

- (void)addAllViewControllers
{
    FirstViewController * first = [[FirstViewController alloc] init];
    MCNavigationController * nav1 = [[MCNavigationController alloc] initWithRootViewController:first];
    
    SecondViewController * second = [[SecondViewController alloc] init];
    MCNavigationController * nav2 = [[MCNavigationController alloc] initWithRootViewController:second];
    
    ThirdViewController * third = [[ThirdViewController alloc] init];
    MCNavigationController * nav3 = [[MCNavigationController alloc] initWithRootViewController:third];
    
    FourthViewController * Fourth = [[FourthViewController alloc] init];
    MCNavigationController * nav4 = [[MCNavigationController alloc] initWithRootViewController:Fourth];
    
//    FifthViewController * fifth = [[FifthViewController alloc] init];
//    MCNavigationController * nav5 = [[MCNavigationController alloc] initWithRootViewController:fifth];
//
//    SixthViewController * sixth = [[SixthViewController alloc] init];
//    NavigationController * nav6 = [[NavigationController alloc] initWithRootViewController:sixth];
    
    self.viewControllers = @[nav1,nav2,nav3,nav4];
}

- (void)setItems
{
    NSArray * titleArray = @[@"基本设置",@"自适应宽度",@"富文本",@"跑马灯效果"];
    NSArray * imageArray = @[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png"];
    NSArray * imageSelArray = @[@"1.png",@"2.png",@"3.png",@"4.png",@"5.png",@"6.png"];
    
    
    
    for (int i = 0; i < titleArray.count; i ++)
    {
        UIViewController * viewController = self.viewControllers[i];
        
        viewController.tabBarItem = [[UITabBarItem alloc] initWithTitle:titleArray[i] image:[[UIImage imageNamed:imageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:imageSelArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    }
}
@end
