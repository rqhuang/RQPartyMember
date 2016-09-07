//
//  RQTaskVC.m
//  RQPartyMember
//
//  Created by hrq on 16/8/31.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQTaskVC.h"
#import "RQTaskCell.h"
#import "RQQuestionDetailVC.h"

@interface RQTaskVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@property(nonatomic,weak) IBOutlet UISegmentedControl *segmented;
@end

@implementation RQTaskVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationItem.title = @"任务";
    [self.tableView registerNib:[UINib nibWithNibName:@"RQTaskCell" bundle:nil] forCellReuseIdentifier:@"task"];

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
    RQTaskCell *cell = [tableView dequeueReusableCellWithIdentifier:@"task"];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    RQQuestionDetailVC *questionDetailVC = [[RQQuestionDetailVC alloc] initWithNibName:@"RQQuestionDetailVC" bundle:nil];
    [self.navigationController pushViewController:questionDetailVC animated:YES];
}

@end
