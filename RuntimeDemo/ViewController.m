//
//  ViewController.m
//  RuntimeDemo
//
//  Created by Anc on 15/12/7.
//  Copyright © 2015年 Ancc. All rights reserved.
//

#import "ViewController.h"
#import "RuntimeTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    [RTTool new];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"%@",NSStringFromSelector(_cmd));
    
    
    UIView *v1 = [UIView new];
    v1.tag = 1;
    [self.view addSubview:v1];
    UIView *v2 = [UIView new];
    v2.tag = 2;
    [v1 addSubview:v2];
    
    
}
-(void)rt_viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"%@",NSStringFromSelector(_cmd));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)vc_touch_event:(id)sender
{
    [self viewDidLoad];
    [self rt_viewDidLoad];
}

@end
