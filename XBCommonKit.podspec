#
# Be sure to run `pod lib lint XBCommonKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XBCommonKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of XBCommonKit.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Qingdao-Budao-Huaxia-Xiaobu-E-Commerce/XBCommonKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sujinxu123@163.com' => 'sujinxu123@163.com' }
  s.source           = { :git => 'https://github.com/Qingdao-Budao-Huaxia-Xiaobu-E-Commerce/XBCommonKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'XBCommonKit/Classes/**/*'
  
end
