//
//  ViewController.m
//  FlutterDemoApp
//
//  Created by 王永林 on 2018/9/27.
//  Copyright © 2018 xxstudio. All rights reserved.
//

#import "ViewController.h"
#import <FlutterAppPod/FlutterAPPLib.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button addTarget:self
               action:@selector(handleButtonAction)
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@"Press me" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor blueColor]];
    button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
    [self.view addSubview:button];
    
}


- (void)handleButtonAction {
    FlutterAPPLib * flutter=[FlutterAPPLib new];
    [flutter pustTestFromVC:self];
}

@end
