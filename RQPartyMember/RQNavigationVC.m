//
//  RQNavigationVC.m
//  RQPartyMember
//
//  Created by hrq on 16/8/31.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQNavigationVC.h"
#import "UIImage+ColorImage.h"
@interface RQNavigationVC ()

@end

@implementation RQNavigationVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationBar.barTintColor = [UIColor redColor];
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIColor grayColor],NSForegroundColorAttributeName, nil] forState:UIControlStateNormal];
    [self.tabBarItem setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIColor redColor],NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    UIColor * color = [UIColor whiteColor];
    //这里我们设置的是颜色，还可以设置shadow等，具体可以参见api
    NSDictionary * dict = [NSDictionary dictionaryWithObject:color forKey:NSForegroundColorAttributeName];
    //大功告成
    self.navigationBar.titleTextAttributes = dict;
    [[UIBarButtonItem appearance] setTintColor:[UIColor whiteColor]];
    [self.navigationBar setBackgroundImage:[UIImage imageWithColor:[UIColor redColor]] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault]; //此处使底部线条颜色为红色
    [self.navigationBar setShadowImage:[UIImage imageWithColor:[UIColor redColor]]];
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

@end
