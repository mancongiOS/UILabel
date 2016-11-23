//
//  SecondViewController.m
//  Demo-图片放大
//
//  Created by quhaola on 16/5/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

#pragma mark - 生命周期
#pragma mark viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self basicSetting];
    
    [self label_one];
}


#pragma mark - 系统代理

#pragma mark - 点击事件

#pragma mark - 实现方法
#pragma mark 基本设置
- (void)basicSetting
{
    self.title = @"";
}

- (void)label_one
{
    NSString * str = @"Label 自适应宽度,你知道怎么实现么?";
    
    UILabel * label_one = [[UILabel alloc] init];
    label_one.frame = CGRectMake(0, 0, 0, 0);
    
    label_one.text = str;
    // 设置行数为不限制
    label_one.numberOfLines = 0;
    
    CGSize size = CGSizeMake(200,2000);

    NSDictionary * dict = @{NSFontAttributeName : label_one.font};
    CGSize labelSize = [str boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;


    
    NSLog(@"%f--%f",labelSize.width,labelSize.height);
    
    label_one.frame = CGRectMake(10, 20, 200, labelSize.height);
    
    [self.view addSubview:label_one];
}

#pragma mark - setter & getter

@end
