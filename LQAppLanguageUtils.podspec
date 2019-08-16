#
# Be sure to run `pod lib lint LQAppLanguageUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  spec.name         = "LQAppLanguageUtils"
  spec.version      = "1.0.0"
  spec.summary      = "iOS 国际化"
  spec.homepage     = "https://github.com/lqIphone/LQAppLanguageUtils"
  spec.swift_version = "4.2"
  spec.license      = "MIT"
  spec.author       = { "Quan Li" => "1083099465@qq.com" }
  spec.platform     = :ios, "9.0"
  spec.source       = { :git => "https://github.com/lqIphone/LQAppLanguageUtils.git", :tag => "1.0.0" }
  spec.source_files = "AppLanguageUtils/*.swift"
  spec.requires_arc = true
end
