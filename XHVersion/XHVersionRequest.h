//
//  XHVersionRequest.h
//  XHVersionExample
//
//  Created by zhuxiaohui on 2016/11/22.
//  Copyright © 2016年 ruiec.cn. All rights reserved.
//  https://github.com/CoderZhuXH/XHVersion

#import <Foundation/Foundation.h>

typedef void(^RequestSucess) (NSDictionary * responseDict);
typedef void(^RequestFailure) (NSError *error);

@interface XHVersionRequest : NSObject

+(void)xh_versionRequestSuccess:(RequestSucess)success failure:(RequestFailure)failure;

@end
