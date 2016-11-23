//
//  ThirdViewController.m
//  Demo-图片放大
//
//  Created by quhaola on 16/5/9.
//  Copyright © 2016年 MC. All rights reserved.
//

#import "ThirdViewController.h"
#import "Masonry.h"

@interface ThirdViewController ()

@property (nonatomic, strong) UILabel  * label_one;

@property (nonatomic, strong) UILabel  * label_two;

@property (nonatomic, strong) UILabel  * label_three;

@property (nonatomic, strong) UILabel  * label_four;


@end

@implementation ThirdViewController

#pragma mark - 生命周期
#pragma mark viewDidLoad
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self basicSetting];
    
    [self addLabel_one];
    
    [self addLabel_two];

    [self addLabel_three];

    [self addLabel_four];

}


#pragma mark - 实现方法
#pragma mark 基本设置
- (void)basicSetting
{
    self.title = @"富文本";
}

- (void)addLabel_one
{
    [self.view addSubview:self.label_one];
    [self.label_one mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.view).with.offset(10);
        make.top.mas_equalTo(self.view).with.offset(30);
        make.height.mas_equalTo(40);
    }];
}

- (void)addLabel_two
{
    [self.view addSubview:self.label_two];
    [self.label_two mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.view).with.offset(10);
        make.top.mas_equalTo(self.view).with.offset(80);
        make.height.mas_equalTo(40);
    }];

}

- (void)addLabel_three
{
    [self.view addSubview:self.label_three];
    [self.label_three mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.view).with.offset(10);
        make.top.mas_equalTo(self.view).with.offset(120);
        make.height.mas_equalTo(100);
    }];

}

- (void)addLabel_four
{
    [self.view addSubview:self.label_four];
    [self.label_four mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.left.mas_equalTo(self.view).with.offset(10);
        make.top.mas_equalTo(self.view).with.offset(240);
        make.height.mas_equalTo(300);
    }];
    
}

#pragma mark - setter & getter

- (UILabel *)label_one
{
    if (!_label_one)
    {
        self.label_one = [[UILabel alloc] init];
        self.label_one.font = [UIFont systemFontOfSize:14.0f];
        self.label_one.textColor = [UIColor blackColor];
        
        NSString * str = @"这是第一个label,单一设置富文本属性";
        
        NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:str];
        
        /** 参数
         
         1. attribute : 需要修改的对象 比如: 字体大小,颜色,下划线,背景颜色等
         2. value:    : 需要修改的对象,对应的值
         3. range:    : 范围  loc 从哪个位置开始, len 长度
         
        */
        
        // 字体大小
        [attributedString addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:20] range:NSMakeRange(0, 2)];
        
        // 字体颜色
        [attributedString addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
        
        // 背景颜色
        [attributedString addAttribute:NSBackgroundColorAttributeName value:[UIColor yellowColor] range:NSMakeRange(0, 2)];
        
        /** 设置下划线样式
         NSUnderlineStyleNone   : 默认 无样式
         NSUnderlineStyleSingle : 单行下划线
         NSUnderlineStyleDouble : 双行下划线
         NSUnderlineStyleThick  : 单行粗下划线
         */
        [attributedString addAttribute:NSUnderlineStyleAttributeName value:@(NSUnderlineStyleSingle) range:NSMakeRange(0, 2)];
        
        // 下划线颜色
        [attributedString addAttribute:NSUnderlineColorAttributeName value:[UIColor redColor] range:NSMakeRange(0, 2)];
        
        // 把富文本添加到label上
        self.label_one.attributedText = attributedString;
    }
    return _label_one;
}


- (UILabel *)label_two
{
    if (!_label_two)
    {
        self.label_two = [[UILabel alloc] init];
        self.label_two.font = [UIFont systemFontOfSize:14.0f];
        self.label_two.textColor = [UIColor blackColor];
        
        NSString * str = @"这个是一个label,一次设置多个富文本属性";
        
        NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:str];
        

        [attributedString addAttributes:@{
                                          // 设置字体大小
                                          NSFontAttributeName : [UIFont boldSystemFontOfSize:20],
                                          // 设置文字颜色
                                          NSForegroundColorAttributeName : [UIColor redColor],
                                          // 设置背景颜色
                                          NSBackgroundColorAttributeName : [UIColor orangeColor],
                                          /** 设置下划线样式
                                           NSUnderlineStyleNone   : 默认 无样式
                                           NSUnderlineStyleSingle : 单行下划线
                                           NSUnderlineStyleDouble : 双行下划线
                                           NSUnderlineStyleThick  : 单行粗下划线
                                           */
                                          
                                          NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle),
                                          NSUnderlineColorAttributeName : [UIColor grayColor]
                                          } range:NSMakeRange(0, 5)];
        
        self.label_two.attributedText = attributedString;
        
    }
    return _label_two;
}


- (UILabel *)label_three
{
    if (!_label_three)
    {
        self.label_three = [[UILabel alloc] init];
        self.label_three.font = [UIFont systemFontOfSize:14.0f];
        self.label_three.textColor = [UIColor blackColor];
        self.label_three.numberOfLines = 0;
        
        NSString * moneyStr = @"100";
        NSString * str = [NSString stringWithFormat:@"富文本使用技巧:\n有不确定位数的,比如服务器返回的金额%@元",moneyStr];
        
        NSInteger length = str.length;
        
        NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:str];
        
        [attributedString addAttributes:@{
                                          NSFontAttributeName : [UIFont systemFontOfSize:20],
                                          NSForegroundColorAttributeName : [UIColor purpleColor]
                                          } range:NSMakeRange(length - moneyStr.length - 1, moneyStr.length)];
        
        self.label_three.attributedText = attributedString;
        
    }
    return _label_three;
}


- (UILabel *)label_four
{
    if (!_label_four)
    {
        self.label_four = [[UILabel alloc] init];
        self.label_four.font = [UIFont systemFontOfSize:14.0f];
        self.label_four.textColor = [UIColor blackColor];
        self.label_four.numberOfLines = 0;
        
        NSString * str = @"文字间距\n设置删除的范围:删除的内容\n设置笔画宽度\n阴影\n字体倾斜\n扁平化\n设置段落样式\n文字横向拉伸\n文字书写方向";
        
        NSLog(@"length: %lu",(unsigned long)str.length);
        
        
        NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:str];
        
        /**  NSKernAttributeName
          字体间距.
          取值NSNumber类型对象.正值间距加宽.负值缩小间距
         */
        [attributedString addAttribute:NSKernAttributeName value:@10 range:NSMakeRange(0, 4)];
        
        
        
        /** NSStrikethroughStyleAttributeName
           设置删除线.
           取值NSNumber. 默认0,不显现. 1显现出来.
         */

        /** NSStrikethroughColorAttributeName
         设置删除线的颜色.
          取值UIColor 默认为黑色.
         */
        [attributedString addAttribute:NSStrikethroughColorAttributeName value:[UIColor redColor] range:NSMakeRange(13,5)];

        
        /** NSStrokeWidthAttributeName  / NSStrokeColorAttributeName 同时使用
         设置画笔的宽度.  / 设置描边颜色
         取值NSNumber 正值中空.负值填充效果.
         */
        [attributedString addAttribute:NSStrokeWidthAttributeName value:@2 range:NSMakeRange(19,6)];
        [attributedString addAttribute:NSStrokeColorAttributeName value:[UIColor greenColor] range:NSMakeRange(19,6)];


        /** NSShadowAttributeName
         设置阴影属性.
         取值NSShadow对象.
         */
        NSShadow * shadow = [[NSShadow alloc] init];
        shadow.shadowColor = [UIColor redColor];
        shadow.shadowOffset = CGSizeMake(5, -5);
        shadow.shadowBlurRadius = 3; // 模糊度
        [attributedString addAttribute:NSShadowAttributeName value:shadow range:NSMakeRange(26,2)];

        /** NSObliquenessAttributeName
         字体倾斜.
         取值NSNumber或者CGFloat 正为右倾.负为左倾.
         */
        [attributedString addAttribute:NSObliquenessAttributeName value:@1 range:NSMakeRange(29,4)];

        
        /** defaultParagraphStyle
          设置段落样式.
         */
        NSMutableParagraphStyle * paragraph = [[NSMutableParagraphStyle alloc] init];
        paragraph.alignment = NSTextAlignmentRight;
        [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraph range:NSMakeRange(37,6)];
        
        
        [attributedString addAttribute:NSExpansionAttributeName value:@1 range:NSMakeRange(45,6)];


        // 文字反向排版
        
        //NSWritingDirectionAttributeName 设置文字书写方向，取值为以下组合
        
        //@[@(NSWritingDirectionLeftToRight | NSTextWritingDirectionEmbedding)]
        //@[@(NSWritingDirectionLeftToRight | NSTextWritingDirectionOverride)]
        //@[@(NSWritingDirectionRightToLeft | NSTextWritingDirectionEmbedding)]
        //@[@(NSWritingDirectionRightToLeft | NSTextWritingDirectionOverride)]
        
       // 一直没搞明白  NSTextWritingDirectionEmbedding 和  NSTextWritingDirectionOverride 有什么不同的效果。但是不加又不行.

        
        [attributedString addAttribute:NSWritingDirectionAttributeName value:@[@(NSWritingDirectionRightToLeft | NSWritingDirectionOverride)] range:NSMakeRange(52,6)];


        // 文字纵向排版
        // NSVerticalGlyphFormAttributeName   设置文字排版方向，取值为 NSNumber 对象(整数)，0 表示横排文本，1 表示竖排文本   iOS 只有横排,没有竖排.



        self.label_four.attributedText = attributedString;
    }
    return _label_four;
}


@end
