//
//  RQSettingPasswordVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/10.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQSettingPasswordVC.h"
#import "RQRegisterCell.h"

@interface RQSettingPasswordVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation RQSettingPasswordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    [self.tableView registerNib:[UINib nibWithNibName:@"RQRegisterCell" bundle:nil] forCellReuseIdentifier:@"cell"];
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
    return 3;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RQRegisterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];\
    switch (indexPath.section) {
        case 0:
            cell.titleLb.text = @"手机号码：";
            cell.contentFd.placeholder = @"请输入手机号码";
            break;
        case 1:
            cell.titleLb.text = @"设置密码：";
            cell.contentFd.placeholder = @"请输入密码,6-20位字符";
            break;
        case 2:
            cell.titleLb.text = @"确认密码：";
            cell.contentFd.placeholder = @"请再次输入密码";
            break;
        default:
            break;
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
