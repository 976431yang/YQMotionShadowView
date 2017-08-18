//
//  ViewController.m
//  testMotionShadow
//
//  Created by problemchild on 2017/8/10.
//  Copyright © 2017年 FreakyYang. All rights reserved.
//
#import "YQMotionShadowView.h"

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImageView *IMGV = [[UIImageView alloc]initWithFrame:CGRectMake(100,
                                                                     100,
                                                                     200,
                                                                     200)];
    IMGV.contentMode = UIViewContentModeScaleAspectFill;
    IMGV.image = [UIImage imageNamed:@"1.pic_hd"];
    IMGV.layer.masksToBounds = YES;
    IMGV.layer.cornerRadius  = 100;
    
    YQMotionShadowView *show = [YQMotionShadowView fromView:IMGV];
    [self.view addSubview:show];
    
}

- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"请用真机调试"
                                                                             message:@"用真机才能看到效果"
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    [alertController addAction:[UIAlertAction actionWithTitle:@"好的"
                                                        style:UIAlertActionStyleDefault
                                                      handler:^(UIAlertAction * _Nonnull action) {
                                                      }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
