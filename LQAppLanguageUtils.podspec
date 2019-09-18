#
# Be sure to run `pod lib lint LQAppLanguageUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LQAppLanguageUtils'
  s.version          = '1.0.1'
  s.summary          = '方便应用做国家化'
  s.description      = <<-DESC
                        可以直接使用语言管理类开发针对，简体中文，繁体中文，和英文的应用
                       DESC
  s.homepage         = 'https://github.com/lqIphone/LQAppLanguageUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lqIphone' => '1083099465@qq.com' }
  s.source           = { :git => 'https://github.com/lqIphone/LQAppLanguageUtils.git', :tag => '1.0.1' }
  s.swift_version = "5"
  s.ios.deployment_target = '9.0'
  s.source_files = 'AppLanguageUtils/AppLanguageManager.swift'
end
