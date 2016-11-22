//
//  ViewController.m
//  XHVersionExample
//
//  Created by zhuxiaohui on 2016/11/22.
//  Copyright © 2016年 ruiec.cn. All rights reserved.
//  https://github.com/CoderZhuXH/XHVersion

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *textLab;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"XHVersionExample";
    
    self.textLab.text = [NSString stringWithFormat:@"详情见:\n https://github.com/CoderZhuXH/XHVersion"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
