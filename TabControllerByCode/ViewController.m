//
//  ViewController.m
//  TabControllerByCode
//
//  Created by wangsl-iMac on 14-11-3.
//  Copyright (c) 2014年 chengtz-iMac. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "FourViewController.h"
@interface ViewController ()
{
    UIImageView * selectview;
    UIImageView * imageview;
}
@end

@implementation ViewController


-(void)loadView
{
    [super loadView];
    self.tabBar.hidden = YES;
}

-(void)loadCustomTabbar
{
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    
    UIImage *image = [UIImage imageNamed:@"tabBar"];
    imageview = [[UIImageView alloc]initWithImage:image];
    CGRect rect = CGRectMake(0, height - 60, width, 60);
    imageview.frame = rect;
    imageview.userInteractionEnabled = YES;
    
    UIImage * select = [UIImage imageNamed:@"select"];
    selectview = [[UIImageView alloc]initWithImage:select];
    selectview.frame = CGRectMake(10 + 53 * 0, 0, 53, 45);
    
    [imageview addSubview:selectview];
    
    for (int nIndex = 0; nIndex < 3; nIndex++) {
        UIButton * btn1 = [[UIButton alloc]initWithFrame:CGRectMake(10 + 53 * nIndex, 0, 53, 45)];
        btn1.tag = nIndex;
        NSString * str = [[NSString alloc]initWithFormat:@"%d", nIndex + 1];
        [btn1 setImage:[UIImage imageNamed:str] forState:UIControlStateNormal];
        [btn1 addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
        
        [imageview addSubview:btn1];
    }

    
    
    
    [self.view addSubview:imageview];
    
}


-(void)click:(UIButton *)sender
{
    NSInteger tag = sender.tag;
    NSLog(@"%d", tag);
    
    self.selectedIndex = tag;
    
    [UIView animateWithDuration:0.5 animations:^{
        selectview.frame = CGRectMake(10 + 53 * tag, 0, 53, 45);
    } completion:^(BOOL finished) {
        NSLog(@"ok");
    }];
    
}

-(void)hideTabbar
{
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    
    
    [UIView animateWithDuration:0.5 animations:^{
        //imageview.hidden = YES;
        
        CGRect rect = CGRectMake(-width, height - 60, width, 60);
        imageview.frame = rect;
    } completion:^(BOOL finished) {
        ;
    }];
    
}

-(void)showTabbar
{
    float width = [UIScreen mainScreen].bounds.size.width;
    float height = [UIScreen mainScreen].bounds.size.height;
    
    [UIView animateWithDuration:0.5 animations:^{
        CGRect rect = CGRectMake(0, height - 60, width, 60);
        imageview.frame = rect;
    } completion:^(BOOL finished) {
        ;
    }];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    FourViewController *four = [[FourViewController alloc]init];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:four];
    UITabBarItem * baritem3 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemContacts tag:102];
    nav.tabBarItem = baritem3;

    
    
    
    SecondViewController *RootViewContrl = [[SecondViewController alloc]init];
    //RootViewContrl.view.backgroundColor = [UIColor greenColor];
    UITabBarItem * baritem = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemDownloads tag:100];
    RootViewContrl.tabBarItem = baritem;
    
    ThirdViewController *third = [[ThirdViewController alloc]init];
    third.view.backgroundColor = [UIColor grayColor];
    UITabBarItem *baritem2 = [[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:101];
    third.tabBarItem = baritem2;
    
    NSArray * array = @[RootViewContrl, third, nav];
    
    self.viewControllers = array;
    
    
    [self loadCustomTabbar];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
