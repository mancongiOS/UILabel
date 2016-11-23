//
//  FirstViewController.m
//  Demo-图片放大
//
//  Created by quhaola on 16/5/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

#pragma mark - 生命周期
#pragma mark viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self basicSetting];
    
    // label 的字体
    [self label_one];
    
    // label 的阴影
    [self label_two];
    
    // label 的边界
    [self label_three];
    
    // label 过长的显示模式
    [self label_four];
    
    // label 旋转
    [self label_five];
}


#pragma mark - 系统代理

#pragma mark - 点击事件

#pragma mark - 实现方法
#pragma mark 基本设置
- (void)basicSetting
{
    self.title = @"Label的基本设置";
}

- (void)label_one
{
    // 设置Label的字体
    UILabel * label_one = [[UILabel alloc] init];
    label_one.frame = CGRectMake(10, 20, 300, 60);
    label_one.text = @"Label的字体";
    
    // 系统字体
    label_one.font = [UIFont systemFontOfSize:14];
    
    // 字体加粗
    label_one.font = [UIFont boldSystemFontOfSize:14];
    
    // 斜体
    
    // 字体样式
    label_one.font = [UIFont fontWithName:@ "Arial Rounded MT Bold"  size:(36.0)];

    
    [self.view addSubview:label_one];
}

#pragma mark label 的阴影
- (void)label_two
{
    UILabel * label_two = [[UILabel alloc] init];
    label_two.frame = CGRectMake(10, 120, 300, 60);
    label_two.text = @"Label的阴影";
    
    // 阴影颜色
    label_two.shadowColor = [UIColor redColor];
    // 阴影位置
    label_two.shadowOffset = CGSizeMake(1, 10);

    [self.view addSubview:label_two];
}

- (void)label_three
{
    UILabel * label_three = [[UILabel alloc] init];
    label_three.frame = CGRectMake(10, 220, 300, 60);
    label_three.text = @"Label的边界";
    
    label_three.backgroundColor = [UIColor whiteColor];
    
    label_three.layer.borderWidth = 1;
    label_three.layer.borderColor = [UIColor redColor].CGColor;
    label_three.layer.cornerRadius = 5.0f;
    label_three.layer.masksToBounds = YES;
    
    [self.view addSubview:label_three];
}

- (void)label_four
{
    UILabel * label_four = [[UILabel alloc] init];
    label_four.frame = CGRectMake(10, 320, 300, 60);
    label_four.text = @"Label过长时候的显示模式,你认为会怎么显示出来呢? 拭目以待吧";
    
    
    /** lineBreakMode
     
     NSLineBreakByWordWrapping = 0,     	// Wrap at word boundaries, default
     NSLineBreakByCharWrapping,		// Wrap at character boundaries
     NSLineBreakByClipping,		    // 直接裁切掉
     NSLineBreakByTruncatingHead,	// Truncate at head of line: "...wxyz"
     NSLineBreakByTruncatingTail,	// Truncate at tail of line: "abcd..."
     NSLineBreakByTruncatingMiddle	// Truncate middle of line:  "ab...yz"
     */
    
    
    label_four.lineBreakMode = NSLineBreakByTruncatingHead;
    
    [self.view addSubview:label_four];
}

- (void)label_five
{
    UILabel * label_five = [[UILabel alloc] init];
    label_five.frame = CGRectMake(10, 420, 300, 60);
    label_five.backgroundColor = [UIColor orangeColor];
    label_five.text = @"Label的旋转";
    
    // 旋转角度
    label_five.transform = CGAffineTransformMakeRotation(-0.1);

    [self.view addSubview:label_five];
}

#pragma mark - setter & getter

@end
