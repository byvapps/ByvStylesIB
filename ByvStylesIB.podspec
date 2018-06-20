#
# Be sure to run `pod lib lint ByvStylesIB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ByvStylesIB'
  s.version          = '0.1.2'
  s.summary          = 'Designable classes for ByvStyles'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This library implements designable classes for ByvStyles
                       DESC

  s.homepage         = 'https://github.com/byvapps/ByvStylesIB'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'adrianByv' => 'adrian@byvapps.com' }
  s.source           = { :git => 'https://github.com/byvapps/ByvStylesIB.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.0'

  s.source_files = 'ByvStylesIB/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ByvStylesIB' => ['ByvStylesIB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'ByvStyles'
end
