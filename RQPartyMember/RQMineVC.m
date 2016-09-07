//
//  RQMineVC.m
//  RQPartyMember
//
//  Created by hrq on 16/8/31.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQMineVC.h"
#import "RQTableViewFirstCell.h"
#import "RQTableViewSecondCell.h"
#import "RQMineHeader.h"
#import "RQPartyScoreVC.h"
#import "RQFollowUpCommentVC.h"
#import "RQCollectVC.h"
#import "RQPersonalInfoVC.h"

@interface RQMineVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@property(nonatomic,strong) RQMineHeader *headView;
@end

@implementation RQMineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"我的";
    UINib *nib = [UINib nibWithNibName:@"RQMineHeader" bundle:nil];
    self.headView = [[nib instantiateWithOwner:self options:nil] firstObject];
    [self.headView.collectBt addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.headView.scoreBt addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.headView.followUpCommentsBt addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.headView.personalInfoBt addTarget:self action:@selector(personalInfoClick:) forControlEvents:UIControlEventTouchUpInside];

    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds), 256)];
    [self.tableView.tableHeaderView addSubview:self.headView];
    [self.tableView registerNib:[UINib nibWithNibName:@"RQTableViewFirstCell" bundle:nil] forCellReuseIdentifier:@"first"];
    [self.tableView registerNib:[UINib nibWithNibName:@"RQTableViewSecondCell" bundle:nil] forCellReuseIdentifier:@"second"];
    UIBarButtonItem *returnButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@""] style:UIBarButtonItemStylePlain target:nil action:nil];
    returnButtonItem.title = @"";
    self.navigationItem.backBarButtonItem = returnButtonItem;
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    self.navigationController.navigationBarHidden = YES;
    
   
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    self.navigationController.navigationBarHidden = NO;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)buttonClick:(UIButton*)sender {
    if (sender.tag == 0) {
        RQPartyScoreVC *psVC = [[RQPartyScoreVC alloc] initWithNibName:@"RQPartyScoreVC" bundle:nil];
        [self.navigationController pushViewController:psVC animated:YES];
    }
    else if (sender.tag == 2) {
        RQFollowUpCommentVC *followVC = [[RQFollowUpCommentVC alloc] initWithNibName:@"RQFollowUpCommentVC" bundle:nil];
        [self.navigationController pushViewController:followVC animated:YES];
    }
    else if (sender.tag == 1) {
        RQCollectVC *collectVC = [[RQCollectVC alloc] initWithNibName:@"RQCollectVC" bundle:nil];
        [self.navigationController pushViewController:collectVC animated:YES];

    }
}
- (void)personalInfoClick:(UIButton*)sedner {
    RQPersonalInfoVC *infoVC = [[RQPersonalInfoVC alloc] initWithNibName:@"RQPersonalInfoVC" bundle:nil];
    [self.navigationController pushViewController:infoVC animated:YES];
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
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==0) {
        RQTableViewFirstCell *firstCell = [self.tableView dequeueReusableCellWithIdentifier:@"first"];
        return firstCell;
    }
    else {
        RQTableViewSecondCell *secondCell = [self.tableView dequeueReusableCellWithIdentifier:@"second"];
        if (indexPath.section == 1) {
            secondCell.iconImageView.image = [UIImage imageNamed:@"versionUpdate.png"];
            secondCell.nameLb.text = @"版本更新";
        }
        else if (indexPath.section == 2) {
            secondCell.iconImageView.image = [UIImage imageNamed:@"clearCash.png"];
            secondCell.nameLb.text = @"清楚缓存";
        }
        else if (indexPath.section ==3) {
            secondCell.iconImageView.image = [UIImage imageNamed:@"aboutUs.png"];
            secondCell.nameLb.text = @"关于我们";
        }
        else if (indexPath.section ==4) {
            secondCell.iconImageView.image = [UIImage imageNamed:@"shareApp.png"];
            secondCell.nameLb.text = @"分享应用";
        }
        return secondCell;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01;
}
@end
