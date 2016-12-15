//
//  XHVersion.h
//  XHVersionExample
//
//  Created by zhuxiaohui on 2016/11/22.
//  Copyright © 2016年 it7090.com. All rights reserved.
//  https://github.com/CoderZhuXH/XHVersion

#import <Foundation/Foundation.h>
#import "XHAppInfo.h"

typedef void(^NewVersionBlock)(XHAppInfo *appInfo);

@interface XHVersion : NSObject

/**
 *  检测新版本(使用默认提示框)
 */
+(void)checkNewVersion;

/**
 *  检测新版本(自定义提示框)
 *
 *  @param newVersion 新版本信息回调
 */
+(void)checkNewVersionAndCustomAlert:(NewVersionBlock)newVersion;

@end
