//
//  XHVersionRequest.h
//  XHVersionExample
//
//  Created by zhuxiaohui on 2016/11/22.
//  Copyright © 2016年 it7090.com. All rights reserved.
//  https://github.com/CoderZhuXH/XHVersion

#import <Foundation/Foundation.h>

typedef void(^RequestSucess) (NSDictionary * responseDict);
typedef void(^RequestFailure) (NSError *error);

@interface XHVersionRequest : NSObject

/**
 *  从AppStore中获取App信息
 *
 *  @param success 成功回调
 *  @param failure 失败回调
 */
+(void)xh_versionRequestSuccess:(RequestSucess)success failure:(RequestFailure)failure;

@end
