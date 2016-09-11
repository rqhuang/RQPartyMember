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
@property(nonatomic,assign) NSInteger selectedIndex;
@property(nonatomic,assign) NSInteger correctSelectedIndex;
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
    if (self.style == QuestionAnswer) {
        self.footView.commitBt.hidden = NO;
        NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc]initWithString:@"正确答案是A,回答正确"];
        NSDictionary *attributeDict = [NSDictionary dictionaryWithObjectsAndKeys:                                       [UIColor greenColor],NSForegroundColorAttributeName,nil];
        [attributedStr addAttributes:attributeDict range:NSMakeRange( [@"正确答案是" length], 1)];
        self.footView.resultLb.attributedText = attributedStr;
    }
    else if (self.style == QuestionDetail) {
        self.footView.commitBt.hidden = YES;
        self.correctSelectedIndex = 1;
        NSMutableAttributedString *attributedStr = [[NSMutableAttributedString alloc]initWithString:@"正确答案是B，您选择的是A"];
        NSDictionary *attributeDict = [NSDictionary dictionaryWithObjectsAndKeys:                                       [UIColor greenColor],NSForegroundColorAttributeName,nil];
        [attributedStr addAttributes:attributeDict range:NSMakeRange( [@"正确答案是" length], 1)];
        attributeDict = [NSDictionary dictionaryWithObjectsAndKeys:                                       [UIColor redColor],NSForegroundColorAttributeName,nil];
        [attributedStr addAttributes:attributeDict range:NSMakeRange( [attributedStr length]-1, 1)];
        self.footView.resultLb.attributedText = attributedStr;
    }
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
    switch (indexPath.section) {
        case 0:
            cell.questionLb.text = @"A.民主法治";
            break;
        case 1:
            cell.questionLb.text = @"B.民主法治";
            break;
        case 2:
            cell.questionLb.text = @"C.民主法治";
            break;
        case 3:
            cell.questionLb.text = @"D.民主法治";
            break;
        default:
            break;
    }
    cell.questionLb.textColor = [UIColor blackColor];
    if (self.style == QuestionAnswer) {
        if (self.selectedIndex == indexPath.section) {
            cell.selectedImageView.image = [UIImage imageNamed:@"selected_black.png"];
        }
        else {
            cell.selectedImageView.image = [UIImage imageNamed:@"selected_normal.png"];
        }
    }
    else if (self.style == QuestionDetail) {
        if (self.selectedIndex == indexPath.section) {
            cell.selectedImageView.image = [UIImage imageNamed:@"selected_red.png"];
            cell.questionLb.textColor = [UIColor redColor];
        }
        else {
            cell.selectedImageView.image = [UIImage imageNamed:@"selected_normal.png"];
        }
        if (self.correctSelectedIndex == indexPath.section) {
            cell.selectedImageView.image = [UIImage imageNamed:@"selected_green.png"];
            cell.questionLb.textColor = [UIColor greenColor];
        }
    }
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
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (self.style == QuestionAnswer) {
        if (self.selectedIndex != indexPath.section) {
            self.selectedIndex = indexPath.section;
            [self.tableView reloadData];
        }
    }
}
@end
