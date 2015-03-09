Pod::Spec.new do |s|
  s.name         = "JEUtilityKit"
  s.version      = "0.0.2"
  s.summary      = "Some commonly used methods"

  s.description  = <<-DESC
                       It is a marquee view used on iOS, which implement by Objective-C.
                       DESC

  s.homepage     = "https://github.com/yinxianwei/JEUtilityKitDemo"
  # s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"

  s.license      = "MIT"

  s.author             = { "尹现伟" => "ios@yinxianwei.cn" }
  # Or just: s.author    = "尹现伟"
  # s.authors            = { "尹现伟" => "yinxianwei@qq.com" }
  # s.social_media_url   = "http://twitter.com/尹现伟"

  # s.platform     = :ios
  s.platform     = :ios, "7.0"

  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"

  s.source       = { :git => "https://github.com/yinxianwei/JEUtilityKitDemo.git", :tag => s.version.to_s }


  s.source_files  = "JEUtilityKitSwift/*.swift"
  #s.exclude_files = "Classes/Exclude"

  # s.resource  = "icon.png"

  s.frameworks = "Foundation", "UIKit"

  s.requires_arc = true


end
