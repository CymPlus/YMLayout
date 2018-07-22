//
//  YMUpdateConstraintViewController.m
//  YMLayout
//
//  Created by cym_bj on 2018/7/22.
//  Copyright © 2018年 cym_bj. All rights reserved.
//

#import "YMUpdateConstraintViewController.h"
#import "Masonry.h"

@interface YMUpdateConstraintViewController ()
@property (nonatomic,strong)UIButton *growMeBtn;
@end

@implementation YMUpdateConstraintViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    
    self.view.backgroundColor=[UIColor whiteColor];
   
    
    self.growMeBtn=[UIButton buttonWithType:UIButtonTypeCustom];
    [self.growMeBtn setTitle:@"点我" forState:UIControlStateNormal];
    [self.growMeBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.growMeBtn.layer.borderWidth=2;
    self.growMeBtn.layer.borderColor=[UIColor greenColor].CGColor;
    [self.view addSubview:self.growMeBtn];
    [self.growMeBtn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.growMeBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.center.mas_equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 100));
    }];
    
}

-(void)clickBtn{
    
    CGSize size=self.growMeBtn.frame.size;
    size=CGSizeMake(size.width*1.2, size.height*1.2);
    
    //更新约束
    [self.growMeBtn mas_updateConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(size);
        
        ////  >= 小于或等于 self.view
        make.width.lessThanOrEqualTo(self.view);
        make.height.lessThanOrEqualTo(self.view);
        
    }];
    
    //添加动画
    [UIView animateWithDuration:0.5 animations:^{
        
        [self.view layoutIfNeeded];
    }];
    
}

@end
