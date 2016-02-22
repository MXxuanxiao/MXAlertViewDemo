//
//  ViewController.m
//  MXAlertViewDemo
//
//  Created by MX_xuanxiao on 16/2/16.
//  Copyright © 2016年 MX. All rights reserved.
//
//  CSDN博客 http://blog.csdn.net/mx_xuanxiao
//


#import "ViewController.h"
#import "MXAlertView.h"
@interface ViewController ()
- (IBAction)info:(id)sender;
- (IBAction)warning:(id)sender;
- (IBAction)error:(id)sender;
- (IBAction)success:(id)sender;
- (IBAction)dismiss:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)info:(id)sender {
    [MXAlertView mx_showInfo:@"信息"];
    [self.view addSubview:[MXAlertView share]];
    
}

- (IBAction)warning:(id)sender {
    [MXAlertView mx_showWarning:@"警告"];
    [self.view addSubview:[MXAlertView share]];
}

- (IBAction)error:(id)sender {
    [MXAlertView mx_showError:@"失败"];
    [self.view addSubview:[MXAlertView share]];
    [self.view .layer removeAllAnimations];
}

- (IBAction)success:(id)sender {
//    [MXAlertView mx_showSuccess:@"成功"];
//    [self.view addSubview:[MXAlertView share]];
    [MXAlertView mx_showScan:@"等待"];
    [self.view addSubview:[MXAlertView share]];
}

- (IBAction)dismiss:(id)sender {
    [MXAlertView mx_dismissView];
}
@end
