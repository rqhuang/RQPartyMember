//
//  RQModifyEmailVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/5.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQModifyEmailVC.h"

@interface RQModifyEmailVC ()

@end

@implementation RQModifyEmailVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"保存" style:UIBarButtonItemStylePlain target:self action:@selector(save:)];
    self.navigationItem.title = @"修改有些地址";
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
- (void)save:(UIBarButtonItem*)sender {
    ;
}
@end
