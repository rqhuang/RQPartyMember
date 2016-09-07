//
//  RQQuestionDetailVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/5.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQQuestionDetailVC.h"
#import "RQQuestionCell.h"
#import "RQQuestionFoot.h"
#import "RQQuestionHead.h"

@interface RQQuestionDetailVC ()
@property(nonatomic,weak) IBOutlet UITableView *tableView;
@property(nonatomic,strong)  RQQuestionHead *headView;
@property(nonatomic,strong) RQQuestionFoot *footView;
@end

@implementation RQQuestionDetailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self.tableView registerNib:[UINib nibWithNibName:@"RQQuestionCell" bundle:nil] forCellReuseIdentifier:@"cell"];
    UINib *headNib =[UINib nibWithNibName:@"RQQuestionHead" bundle:nil];
    self.headView = [[headNib instantiateWithOwner:self options:nil] firstObject];
    UINib *footNib =[UINib nibWithNibName:@"RQQuestionFoot" bundle:nil];
    self.footView = [[footNib instantiateWithOwner:self options:nil] firstObject];
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
    RQQuestionCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    return cell;
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return self.headView;
    }
    else {
        return nil;
    }
}
- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    if (section == 3) {
        return self.footView;
    }
    else {
        return nil;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 146;
    }
    else {
        return 0.01;
    }
    
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section ==3) {
        return 140;
    }
    else {
        return 0.01;
    }
}
@end
