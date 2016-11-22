#XHVersion

###一行代码检测App更新,无需添加AppId等任何信息

[![AppVeyor](https://img.shields.io/appveyor/ci/gruntjs/grunt.svg?maxAge=2592000)](https://github.com/CoderZhuXH/XHVersion)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/CoderZhuXH/XHVersion)
[![Version Status](https://img.shields.io/cocoapods/v/XHVersion.svg?style=flat)](http://cocoadocs.org/docsets/XHVersion)
[![Support](https://img.shields.io/badge/support-iOS%207%2B-brightgreen.svg)](https://github.com/CoderZhuXH/XHVersion)
[![Pod Platform](https://img.shields.io/cocoapods/p/XHVersion.svg?style=flat)](http://cocoadocs.org/docsets/XHVersion/)
[![Pod License](https://img.shields.io/cocoapods/l/XHVersion.svg?style=flat)](https://github.com/CoderZhuXH/XHVersion/blob/master/LICENSE)

==============

###特性:

*   1.一行代码检测App更新
*   2.无需添加AppId等任何信息.
*   3.支持自定义新版本提示框

###技术交流群(群号:537476189).

### 更新记录:
*    2016.11.22 -- v1.0.0

###效果:
![](/Demo.png)

##API
*    一共提供两个API

```objc
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

```
## 使用方法

#### 导入头文件 #import "XHVersion.h" ,在需要检测新版本的地方调用下面代码
```objc
    
     //1.新版本检测(使用默认提示框)
     [XHVersion checkNewVersion];
    

     //2.如果你需要自定义提示框,请使用下面方法
     [XHVersion checkNewVersionAndCustomAlert:^(XHAppInfo *appInfo) {
        
        //appInfo为新版本在AppStore相关信息
        //请在此处自定义您的提示框
        //......
        
    }];

```

##  安装
### 1.手动添加:<br>
*   1.将 XHVersion 文件夹添加到工程目录中<br>
*   2.导入 XHVersion.h

### 2.CocoaPods:<br>
*   1.在 Podfile 中添加 pod 'XHVersion'<br>
*   2.执行 pod install 或 pod update<br>
*   3.导入 XHVersion.h

##  Tips
*   1.如果发现pod search XHVersion 搜索出来的不是最新版本，需要在终端执行cd ~/desktop退回到desktop，然后执行pod setup命令更新本地spec缓存（需要几分钟），然后再搜索就可以了
*   2.如果你发现你执行pod install后,导入的不是最新版本,请删除Podfile.lock文件,在执行一次 pod install
*   3.如果在使用过程中遇到BUG，希望你能Issues我，谢谢（或者尝试下载最新的代码看看BUG修复没有）

##  系统要求
*   该项目最低支持 iOS 7.0 和 Xcode 7.0

##  许可证
XHVersion 使用 MIT 许可证，详情见 LICENSE 文件