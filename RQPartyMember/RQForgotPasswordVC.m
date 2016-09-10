//
//  RQForgotPasswordVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/10.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQForgotPasswordVC.h"
#import "RQForgotPasswordToastVC.h"

@interface RQForgotPasswordVC ()

@end

@implementation RQForgotPasswordVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.edgesForExtendedLayout = UIRectEdgeNone;
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
- (IBAction)commit:(id)sender {
    RQForgotPasswordToastVC *forgotPasswordToastVC = [[RQForgotPasswordToastVC alloc] initWithNibName:@"RQForgotPasswordToastVC" bundle:nil];
    self.view.window.rootViewController.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    forgotPasswordToastVC.modalPresentationStyle = UIModalPresentationOverCurrentContext;
    [self.view.window.rootViewController presentViewController:forgotPasswordToastVC animated:NO completion:nil];
}
@end
