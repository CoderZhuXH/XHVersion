//
//  ViewController.m
//  XHVersionExample
//
//  Created by zhuxiaohui on 2016/11/22.
//  Copyright © 2016年 it7090.com. All rights reserved.
//  https://github.com/CoderZhuXH/XHVersion

#import "ViewController.h"
#import "XHVersion.h"

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
- (IBAction)checkAction:(UIButton *)sender {
    
    //请在你需要检测更新的位置添加下面代码
    
    //1.新版本检测(使用默认提示框)
    [XHVersion checkNewVersion];
    
    //2.如果你需要自定义提示框,请使用下面方法
    [XHVersion checkNewVersionAndCustomAlert:^(XHAppInfo *appInfo) {
        
        //appInfo为新版本在AppStore相关信息
        //请在此处自定义您的提示框
        NSLog(@"新版本信息:\n 版本号 = %@ \n 更新时间 = %@\n 更新日志 = %@ \n 在AppStore中链接 = %@\n AppId = %@ \n bundleId = %@" ,appInfo.version,appInfo.currentVersionReleaseDate,appInfo.releaseNotes,appInfo.trackViewUrl,appInfo.trackId,appInfo.bundleId);
        
    }];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
