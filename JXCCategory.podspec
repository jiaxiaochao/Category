
Pod::Spec.new do |s|

  s.name         = "JXCCategory"
  s.version      = "0.0.1"
  s.summary      = "常用类别"
  s.homepage     = "https://github.com/jiaxiaochao/Category"
  s.license      = "MIT"
  s.author             = { "jiaxiaochao" => "578502243@qq.com" }
  s.platform     = :ios
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/jiaxiaochao/Category.git", :tag => "#{s.version}" }
  s.source_files  = "Category", "Category/*/*.{h,m}"
  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true

end
