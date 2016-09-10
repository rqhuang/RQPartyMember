//
//  RQSearchVC.m
//  RQPartyMember
//
//  Created by hrq on 16/9/5.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQSearchVC.h"

@interface RQSearchVC ()

@end

@implementation RQSearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.titleView = [[UIView alloc] initWithFrame:CGRectMake(100, 0, CGRectGetWidth([UIScreen mainScreen].bounds)-100, 44)];
    self.navigationItem.titleView.backgroundColor = [UIColor redColor];
   UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth([UIScreen mainScreen].bounds)-100, 44)];
    searchBar.barTintColor = [UIColor redColor];
    searchBar.backgroundColor = [UIColor redColor];
    searchBar.translucent = YES;
    [self.navigationItem.titleView addSubview:searchBar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
