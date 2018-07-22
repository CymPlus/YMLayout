//
//  YMCompositeEdgesViewController.m
//  YMLayout
//
//  Created by cym_bj on 2018/7/22.
//  Copyright © 2018年 cym_bj. All rights reserved.
//

#import "YMCompositeEdgesViewController.h"
#import "Masonry.h"
@interface YMCompositeEdgesViewController ()

@end

@implementation YMCompositeEdgesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    CGFloat magin=10;
    for (int i=1; i<10; i++) {
        
        UIView *view=[[UIView alloc]init];
        view.backgroundColor=[self randomColor];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(magin*i, magin*i, magin*2*i, magin*2*i));
        }];
    }
    
    
}

#pragma mark- 随机颜色
- (UIColor *)randomColor {
    CGFloat hue = ( arc4random() % 256 / 256.0 );  //  0.0 to 1.0
    CGFloat saturation = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from white
    CGFloat brightness = ( arc4random() % 128 / 256.0 ) + 0.5;  //  0.5 to 1.0, away from black
    return [UIColor colorWithHue:hue saturation:saturation brightness:brightness alpha:1];
}

@end
