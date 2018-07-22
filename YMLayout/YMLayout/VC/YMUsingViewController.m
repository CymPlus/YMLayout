//
//  YMUsingViewController.m
//  YMLayout
//
//  Created by cym_bj on 2018/7/22.
//  Copyright © 2018年 cym_bj. All rights reserved.
//

#import "YMUsingViewController.h"
#import "Masonry.h"

@interface YMUsingViewController ()

@property (nonatomic,strong)UIView *redView;
@property (nonatomic,strong)UIView *orangeView;

@end

@implementation YMUsingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor whiteColor];
    
    self.redView=[[UIView alloc]init];
    self.redView.backgroundColor=[UIColor redColor];
    self.redView.layer.borderColor=[UIColor blackColor].CGColor;
    self.redView.layer.borderWidth=2;
    [self.view addSubview:self.redView];
    
    self.orangeView=[[UIView alloc]init];
    self.orangeView.backgroundColor=[UIColor orangeColor];
    self.orangeView.layer.borderColor=[UIColor blackColor].CGColor;
    self.orangeView.layer.borderWidth=2;
    [self.redView addSubview:self.orangeView];
    
    
    [self.redView mas_makeConstraints:^(MASConstraintMaker *make) {
        
        make.edges.mas_equalTo(self.view).insets(UIEdgeInsetsMake(70, 10, 10, 10));
        
    }];
    
    [self.orangeView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(100, 100));
        make.center.mas_equalTo(self.redView);
    }];
    
}



@end
