//
//  FourthViewController.m
//  Demo-图片放大
//
//  Created by quhaola on 16/5/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "FourthViewController.h"
#import "SDCycleScrollView.h"
#import "Masonry.h"

@interface FourthViewController () <SDCycleScrollViewDelegate>

@property (nonatomic, strong) SDCycleScrollView * textCycleScrollView;

@end

@implementation FourthViewController

#pragma mark - 生命周期
#pragma mark viewDidLoad
- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self basicSetting];
    
    [self sendNetWorking];
    
    [self initUI];
}

#pragma mark - 系统代理

#pragma mark - 点击事件

#pragma mark - 网络请求
- (void)sendNetWorking {
    
}

#pragma mark - 实现方法
#pragma mark 基本设置
- (void)basicSetting {
    self.title = @"跑马灯效果";
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark - UI布局
- (void)initUI {
    
    [self onlyText];
}

- (void)onlyText
{
    [self.view addSubview:self.textCycleScrollView];
    [self.textCycleScrollView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.view).with.offset(0);
        make.width.mas_equalTo(self.view.bounds.size.width);
        make.top.mas_equalTo(self.view).with.offset(20);
        make.height.mas_equalTo(40);
    }];
}

#pragma mark - setter & getter

- (SDCycleScrollView *)textCycleScrollView
{
    if (!_textCycleScrollView)
    {
        self.textCycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectZero delegate:self placeholderImage:nil];
        
//        self.textCycleScrollView.scrollDirection = UICollectionViewScrollDirectionVertical;
        self.textCycleScrollView.scrollDirection = UICollectionViewScrollDirectionHorizontal;

        
        self.textCycleScrollView.onlyDisplayText = YES;
        
        self.textCycleScrollView.titlesGroup = @[@"第一个",@"第二个",@"第三个",@"第四个"];
    }
    return _textCycleScrollView;
}

@end
