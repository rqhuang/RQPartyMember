//
//  RQRegisterVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/10.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQRegisterVC.h"
#import "RQRegisterCell.h"
#import "RQSettingPasswordVC.h"

@interface RQRegisterVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation RQRegisterVC

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
- (IBAction)regist:(id)sender {
    RQSettingPasswordVC *passwordVC = [[RQSettingPasswordVC alloc] initWithNibName:@"RQSettingPasswordVC" bundle:nil];
    [self.navigationController pushViewController:passwordVC animated:YES];
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
    return 6;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    RQRegisterCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];\
    switch (indexPath.section) {
        case 0:
            cell.titleLb.text = @"姓名：";
            cell.contentFd.placeholder = @"请输入姓名";
            break;
        case 1:
            cell.titleLb.text = @"姓别：";
            cell.contentFd.placeholder = @"请输入姓名";
            cell.contentFd.text = @"男";
            break;
        case 2:
            cell.titleLb.text = @"身份证号：";
            cell.contentFd.placeholder = @"请输入身份证号";
            break;
        case 3:
            cell.titleLb.text = @"党龄(年)：";
            cell.contentFd.placeholder = @"请输入党龄";
            break;
        case 4:
            cell.titleLb.text = @"邮箱地址：";
            cell.contentFd.placeholder = @"请输入邮箱地址";
        case 5:
            cell.titleLb.text = @"党支部：";
            cell.contentFd.text = @"xx党支部";
            break;
        default:
            break;
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
