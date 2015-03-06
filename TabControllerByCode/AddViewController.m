//
//  AddViewController.m
//  TabControllerByCode
//
//  Created by wangsl-iMac on 14-11-4.
//  Copyright (c) 2014年 chengtz-iMac. All rights reserved.
//

#import "AddViewController.h"
#import "ViewController.h"
@interface AddViewController ()

@end

@implementation AddViewController

-(void)loadView
{
    [super loadView];
    //self.hidesBottomBarWhenPushed = YES;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%s", __FUNCTION__);
    ViewController * view = (ViewController *)self.tabBarController;
    [view hideTabbar];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    
    
    UIBarButtonItem * item = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRedo target:self action:@selector(click)];
    
    self.navigationItem.rightBarButtonItem = item;
}

-(void)click
{
    [self dismissViewControllerAnimated:YES completion:^{
        NSLog(@"");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    NSLog(@"AddView dealloc");
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
