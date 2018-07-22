//
//  YMRemakeViewController.m
//  YMLayout
//
//  Created by cym_bj on 2018/7/22.
//  Copyright © 2018年 cym_bj. All rights reserved.
//

#import "YMRemakeViewController.h"
#import "Masonry.h"
@interface YMRemakeViewController ()
@property (nonatomic,strong)UIButton *growMeBtn;
@end

@implementation YMRemakeViewController

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
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.left.mas_equalTo(self.view);
        make.top.mas_equalTo(self.view).offset(64);
        
    }];
    
}
-(void)clickBtn{
    
    self.growMeBtn.selected=!self.growMeBtn.selected;
    //删除以前所有元素
    [self.growMeBtn mas_remakeConstraints:^(MASConstraintMaker *make) {
        
        
        if (self.growMeBtn.selected) {
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.bottom.right.mas_equalTo(self.view);
        }else{
            make.size.mas_equalTo(CGSizeMake(100, 100));
            make.left.mas_equalTo(self.view);
            make.top.mas_equalTo(self.view).offset(64);
        }
        
        
        
    }];
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
}

@end
