//
//  RQFollowUpCommentVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/4.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQFollowUpCommentVC.h"
#import "RQFollowUpCommentCell.h"

@interface RQFollowUpCommentVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@end

@implementation RQFollowUpCommentVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.tableView registerNib:[UINib nibWithNibName:@"RQFollowUpCommentCell" bundle:nil] forCellReuseIdentifier:@"RQFollowUpCommentCell"];
    self.navigationItem.title = @"我的跟帖";
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
    return 5;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    RQFollowUpCommentCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RQFollowUpCommentCell" forIndexPath:indexPath];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0.01;
}
@end
