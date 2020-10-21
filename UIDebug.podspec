#
#  Be sure to run `pod spec lint UIDebug.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

s.name         = "UIDebug"
s.version      = "1.0.2"
s.summary      = "UIDebug for ios."
s.homepage     = "https://github.com/XuZzz/UIDebug"
s.license          = 'MIT'
s.author       = { "Xuzhen" => "wowxznianshao@163.com" }
s.platform     = :ios, "14.0"
s.source       = { :git => "https://github.com/XuZzz/UIDebug.git", :tag => "1.0.2" }
s.source_files = "Debug", "UIDebug/Debug/*.swift"
s.resources    = "UIDebug/*.xcassets"
s.framework    = "UIKit"
s.requires_arc = true
s.swift_version = '5.0'

end
