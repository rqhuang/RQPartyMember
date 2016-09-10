//
//  RQPersonalInfoVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/5.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQPersonalInfoVC.h"
#import "RQPersonalInfoCell.h"
#import "RQModifyNameVC.h"
#import "RQModifyEmailVC.h"
#import "RQRetrievePasswordVC.h"
#import "RQChooseSexualVC.h"
#import "RQModifyPartyAddressVC.h"
@interface RQPersonalInfoVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation RQPersonalInfoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self.tableView registerNib:[UINib nibWithNibName:@"RQPersonalInfoCell" bundle:nil] forCellReuseIdentifier:@"cell"];
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
    return 4;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RQPersonalInfoCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    if (indexPath.section == 0) {
        cell.titleLb.text = @"姓名:";
        cell.contentLb.text = @"李建国";
    }
    else if (indexPath.section == 1) {
        cell.titleLb.text = @"性别:";
        cell.contentLb.text = @"男";
    }
    else if (indexPath.section == 2) {
        cell.titleLb.text = @"党支部:";
        cell.contentLb.text = @"xx党支部";
    }
    else if (indexPath.section == 3) {
        cell.titleLb.text = @"邮箱地址:";
        cell.contentLb.text = @"123456@qq.com";
    }
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        RQChooseSexualVC *sexualVC = [[RQChooseSexualVC alloc] initWithNibName:@"RQChooseSexualVC" bundle:nil];
        self.view.window.rootViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        sexualVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
        [self.view.window.rootViewController presentViewController:sexualVC animated:NO completion:nil];
    }
    else {
        UIViewController *vc = nil;
        if (indexPath.section == 0) {
            vc = [[RQModifyNameVC alloc] initWithNibName:@"RQModifyNameVC" bundle:nil];
        }
        else if (indexPath.section == 2) {
            vc = [[RQModifyPartyAddressVC alloc] initWithNibName:@"RQModifyPartyAddressVC" bundle:nil];
        }
        else if (indexPath.section == 3) {
            vc = [[RQModifyEmailVC alloc] initWithNibName:@"RQModifyEmailVC" bundle:nil];

//            vc = [[RQRetrievePasswordVC alloc] initWithNibName:@"RQRetrievePasswordVC" bundle:nil];
        }
        [self.navigationController pushViewController:vc animated:YES];
    }
}
@end
