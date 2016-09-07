//
//  RQTabBarController.m
//  RQPartyMember
//
//  Created by hrq on 16/8/31.
//  Copyright © 2016年 hrq. All rights reserved.
//

#import "RQTabBarController.h"
#import "RQInformationVC.h"
#import "RQTaskVC.h"
#import "RQPartyHistoryVC.h"
#import "RQMineVC.h"
#import "RQNavigationVC.h"

@interface RQTabBarController ()

@end

@implementation RQTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    RQInformationVC *infoVC = [[RQInformationVC alloc] initWithNibName:@"RQInformationVC" bundle:nil];
    RQNavigationVC *infoNav = [[RQNavigationVC alloc] initWithRootViewController:infoVC];
    infoNav.tabBarItem.title = @"资讯";
    [infoNav.tabBarItem setImage:[UIImage imageNamed:@"tabbarInfo.png"]];
    UIImage *infoSelectedImage = [[UIImage imageNamed:@"tabbarInfo_s.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [infoNav.tabBarItem setSelectedImage:infoSelectedImage];
    

    
    RQTaskVC *taskVC = [[RQTaskVC alloc] initWithNibName:@"RQTaskVC" bundle:nil];
    RQNavigationVC *taskNav = [[RQNavigationVC alloc] initWithRootViewController:taskVC];
    taskNav.tabBarItem.title = @"任务";
    [taskNav.tabBarItem setImage:[UIImage imageNamed:@"tabbarTask.png"]];
    UIImage *taskSelectedImage = [[UIImage imageNamed:@"tabbarTask_s.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [taskNav.tabBarItem setSelectedImage:taskSelectedImage];

    RQPartyHistoryVC *partyHistoryVC = [[RQPartyHistoryVC alloc] initWithNibName: @"RQPartyHistoryVC" bundle:nil];
    RQNavigationVC *partyHistoryNav = [[RQNavigationVC alloc] initWithRootViewController:partyHistoryVC];
    partyHistoryNav.tabBarItem.title = @"党史";
    [partyHistoryNav.tabBarItem setImage:[UIImage imageNamed:@"tabbarPartyHistory.png"]];
    UIImage *partyHistorySelectedImage = [[UIImage imageNamed:@"tabbarPartyHistory_s.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [partyHistoryNav.tabBarItem setSelectedImage:partyHistorySelectedImage];

    RQMineVC *mineVC = [[RQMineVC alloc] initWithNibName:@"RQMineVC" bundle:nil];
    RQNavigationVC *mineNav = [[RQNavigationVC alloc] initWithRootViewController:mineVC];
    mineNav.tabBarItem.title = @"我的";
    [mineNav.tabBarItem setImage:[UIImage imageNamed:@"tabbarMine.png"]];
    UIImage *mineSelectedImage = [[UIImage imageNamed:@"tabbarMine_s.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [mineNav.tabBarItem setSelectedImage:mineSelectedImage];

    self.viewControllers = @[infoNav,taskNav,partyHistoryNav,mineNav];
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.tabBar.tintColor = [UIColor clearColor];
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
