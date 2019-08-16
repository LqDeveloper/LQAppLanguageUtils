#
# Be sure to run `pod lib lint LQAppLanguageUtils.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LQAppLanguageUtils'
  s.version          = '1.0.0'
  s.summary          = '方便应用做国家化'
  s.description      = <<-DESC
                        方便应用做国家化
                       DESC
  s.homepage         = 'https://github.com/lqIphone/LQAppLanguageUtils'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'lqIphone' => '1083099465@qq.com' }
  s.source           = { :git => 'https://github.com/lqIphone/LQAppLanguageUtils.git', :tag => '1.0.0' }
  s.swift_version = "4.2"
  s.ios.deployment_target = '9.0'
  s.source_files = 'AppLanguageUtils/AppLanguageManager.swift'
end
