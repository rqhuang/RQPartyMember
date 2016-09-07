//
//  RQInformationVC.m
//  RQPartyMember
//
//  Created by hrq on 16/8/31.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQInformationVC.h"
#import "RQInfoTableViewCell.h"
#import "RQCommentDetailVC.h"
#import "RQInfomationDetailVC.h"
#import "RQSearchVC.h"
#import "RQCollectVC.h"

@interface RQInformationVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation RQInformationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"资讯";
    [self.tableView registerNib:[UINib nibWithNibName:@"RQInfoTableViewCell" bundle:nil] forCellReuseIdentifier:@"info"];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"search.png"] style:UIBarButtonItemStylePlain target:self action:@selector(searchClick:)];
}
- (void)searchClick:(UIBarButtonItem*)sender {
    RQSearchVC *searchVC = [[RQSearchVC alloc] initWithNibName:@"RQSearchVC" bundle:nil];
    [self.navigationController pushViewController:searchVC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 100;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RQInfoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"info"];
    [cell.commentBt addTarget:self action:@selector(commentClick:) forControlEvents:UIControlEventTouchUpInside];
    [cell.collectBt addTarget:self action:@selector(collectClick:) forControlEvents:UIControlEventTouchUpInside];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    RQInfomationDetailVC *infoDetailVC = [[RQInfomationDetailVC alloc] initWithNibName:@"RQInfomationDetailVC" bundle:nil];
    [self.navigationController pushViewController:infoDetailVC animated:YES];
}

- (void)commentClick:(UIButton*)sender {
    RQCommentDetailVC *commentDetailVC = [[RQCommentDetailVC alloc] initWithNibName:@"RQCommentDetailVC" bundle:nil];
    [self.navigationController pushViewController:commentDetailVC animated:YES];
}
- (void)collectClick:(UIButton*)sender {
    RQCollectVC *collectVC = [[RQCollectVC alloc] initWithNibName:@"RQCollectVC" bundle:nil];
    [self.navigationController pushViewController:collectVC animated:YES];
}

@end
