//
//  SecondViewController.m
//  TabControllerByCode
//
//  Created by wangsl-iMac on 14-11-3.
//  Copyright (c) 2014年 chengtz-iMac. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"
@interface SecondViewController ()

@end

@implementation SecondViewController


-(void)loadView
{
    [super loadView];
    
    
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%s", __FUNCTION__);
//    ViewController * view = (ViewController *)self.tabBarController;
//    [view hideTabbar];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    NSLog(@"%s", __FUNCTION__);
//    ViewController * view = (ViewController *)self.tabBarController;
//    [view hideTabbar];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //[self.tabBarController hideTabbar];
    self.view.backgroundColor = [UIColor greenColor];

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
