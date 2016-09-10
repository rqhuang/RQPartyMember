//
//  RQModifyPartyAddressVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/10.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQModifyPartyAddressVC.h"
#import "RQPartyAddressCell.h"
#import "RQLineView.h"

@interface RQModifyPartyAddressVC ()
@property(nonatomic,weak) IBOutlet NSLayoutConstraint *topConstraint;
@property(nonatomic,weak) IBOutlet NSLayoutConstraint *heightConstraint;
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation RQModifyPartyAddressVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationItem.title = @"修改地区";
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"保存" style:UIBarButtonItemStylePlain target:self action:@selector(save:)];
    self.tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, 1)];
    [self.tableView registerNib:[UINib nibWithNibName:@"RQPartyAddressCell" bundle:nil] forCellReuseIdentifier:@"cell"];

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

- (IBAction)showAddress:(UIButton*)sender {
    if (self.topConstraint.constant == 0) {
        [UIView animateWithDuration:0.5 animations:^{
            self.topConstraint.constant = -CGRectGetHeight(self.tableView.bounds);
            [self.view layoutIfNeeded];
        }];
    }
    else {
        [UIView animateWithDuration:0.5 animations:^{
            self.topConstraint.constant = 0;
            [self.view layoutIfNeeded];
        }];
    }
}
- (void)save:(UIBarButtonItem*)sender {
    ;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 14;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RQPartyAddressCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.titleLb.text = [NSString stringWithFormat:@"%zi --当支部",indexPath.section];
    return cell;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    RQLineView *lineView = [[RQLineView alloc] init];
    return lineView;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

@end
