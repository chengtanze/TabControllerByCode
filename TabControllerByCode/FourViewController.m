//
//  FourViewController.m
//  TabControllerByCode
//
//  Created by wangsl-iMac on 14-11-3.
//  Copyright (c) 2014年 chengtz-iMac. All rights reserved.
//

#import "FourViewController.h"
#import "AddViewController.h"
#import "ViewController.h"
@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    UIBarButtonItem *navItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(click)];
    self.navigationItem.rightBarButtonItem = navItem;
}

-(void)click
{
    //UIStoryboard * main = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    //AddViewController * addView = [main instantiateViewControllerWithIdentifier:@"AddViewController"];
    
    AddViewController * addView = [[AddViewController alloc]init];
    
    [self.navigationController pushViewController:addView animated:YES];
    //AddViewController * view = [[AddViewController alloc]init];
    
    //[self presentViewController:addView animated:YES completion:^{
    //    NSLog(@"COMPLETE");
    //}];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSLog(@"%s", __FUNCTION__);
   ViewController * view = (ViewController *)self.tabBarController;
   [view showTabbar];
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
