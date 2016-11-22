Pod::Spec.new do |s|
  s.name         = "XHVersion"
  s.version      = "1.0.0"
  s.summary      = "一行代码检测App更新,无需添加AppId等任何信息"
  s.homepage     = "https://github.com/CoderZhuXH/XHVersion"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Zhu Xiaohui" => "977950862@qq.com"}
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CoderZhuXH/XHVersion.git", :tag => s.version }
  s.source_files = "XHVersion", "*.{h,m}"
  s.requires_arc = true
end
