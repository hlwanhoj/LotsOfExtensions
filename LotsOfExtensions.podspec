#
# Be sure to run `pod lib lint LotsOfExtensions.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LotsOfExtensions'
  s.version          = '1.1.2'
  s.summary          = 'A collection of swift extensions which save your code and time.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A collection of swift extensions which save your code and time. These extensions are frequently used in my previous works and I hope they can help you also.
                       DESC

  s.homepage         = 'https://github.com/hlwanhoj/LotsOfExtensions'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hlwanhoj' => 'hlwanhoj@gmail.com' }
  s.source           = { :git => 'https://github.com/hlwanhoj/LotsOfExtensions.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.swift_versions = '5.0'

#  s.source_files = 'LotsOfExtensions/Classes/**/*'
  
  s.subspec 'Foundation' do |sp|
	sp.source_files = 'LotsOfExtensions/Classes/Foundation/**/*'
  end

  s.subspec 'UIKit' do |sp|
  sp.source_files = 'LotsOfExtensions/Classes/UIKit/**/*'
  end
    
  # s.resource_bundles = {
  #   'LotsOfExtensions' => ['LotsOfExtensions/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
