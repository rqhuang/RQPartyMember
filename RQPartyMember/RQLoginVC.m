//
//  RQLoginVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/10.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQLoginVC.h"
#import "RQRegisterVC.h"
#import "RQForgotPasswordVC.h"

@interface RQLoginVC ()

@end

@implementation RQLoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewWillAppear:(BOOL)animated {
    self.navigationController.navigationBarHidden = YES;
}
- (void)viewWillDisappear:(BOOL)animated {
    self.navigationController.navigationBarHidden = NO;
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)regist:(id)sender {
    RQRegisterVC *registerVC = [[RQRegisterVC alloc] initWithNibName:@"RQRegisterVC" bundle:nil];
    [self.navigationController pushViewController:registerVC animated:YES];
}
- (IBAction)forgotPassword:(id)sender {
    RQForgotPasswordVC *forgotPasswordVC = [[RQForgotPasswordVC alloc] initWithNibName:@"RQForgotPasswordVC" bundle:nil];
    [self.navigationController pushViewController:forgotPasswordVC animated:YES];
}
- (IBAction)login:(UIButton*)sender {
    self.complete(YES);
}
@end
