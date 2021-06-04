#
# Be sure to run `pod lib lint KHKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'KHKit'
  s.version          = '0.1.8'
  s.summary          = 'KHKit 包含日常所用到的Util、Category、Views'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  KHKit 包含日常所用到的Util、Category、Views
                       DESC

  s.homepage         = 'https://github.com/keroushe/KHKit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'keroushe' => '935823671@qq.com' }
  s.source           = { :git => 'https://github.com/keroushe/KHKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'KHKit/Classes/KHKit.h'
  
  s.subspec 'KHCategorys' do |ss|
      ss.source_files = 'KHKit/Classes/KHCategorys/**/*.{h,m}'
  end
  
  s.subspec 'KHUtils' do |ss|
      ss.source_files = 'KHKit/Classes/KHUtils/**/*.{h,m}'
  end
  
  s.subspec 'KHViews' do |ss|
      ss.source_files = 'KHKit/Classes/KHViews/**/*.{h,m}'
  end
  
  # s.resource_bundles = {
  #   'KHKit' => ['KHKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
end
