//
//  ViewController.m
//  YMLayout
//
//  Created by cym_bj on 2018/7/21.
//  Copyright © 2018年 cym_bj. All rights reserved.
//

#import "ViewController.h"
#import "YMBaseViewController.h"
#import "YMUpdateConstraintViewController.h"
#import "YMRemakeViewController.h"
#import "YMUsingViewController.h"
#import "YMCompositeEdgesViewController.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,weak) IBOutlet UITableView *tableView;
@property (nonatomic,strong)NSArray *datasList;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    

}
-(NSArray *)datasList
{
    if (_datasList==nil) {
        
        _datasList=@[@"Base(基本使用)",@"Updata Constraints(更新约束)",@"Remake",@"Using",@"Composite Edges"];
    }
    return _datasList;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datasList.count;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID=@"CellID";
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:ID];
    if (cell==nil)
    {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    
    cell.textLabel.text=self.datasList[indexPath.row];
    
    return cell;
    
    
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row==0) {
        
        YMBaseViewController *baseVC=[[YMBaseViewController alloc]init];
        [self.navigationController pushViewController:baseVC animated:YES];
        
    }
    else if (indexPath.row==1)
    {
        YMUpdateConstraintViewController *updateVC=[[YMUpdateConstraintViewController alloc]init];
        [self.navigationController pushViewController:updateVC animated:YES];
    }
    else if (indexPath.row==2)
    {
        YMRemakeViewController *remakeVC=[[YMRemakeViewController alloc]init];
        [self.navigationController pushViewController:remakeVC animated:YES];
    }
    else if (indexPath.row==3)
    {
        YMUsingViewController *usingVC=[[YMUsingViewController alloc]init];
        [self.navigationController pushViewController:usingVC animated:YES];
    }
    else if (indexPath.row==4)
    {
        YMCompositeEdgesViewController *edgeVC=[[YMCompositeEdgesViewController alloc]init];
        [self.navigationController pushViewController:edgeVC animated:YES];
    }
}




@end
