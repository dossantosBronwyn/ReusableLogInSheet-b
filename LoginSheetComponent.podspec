#
# Be sure to run `pod lib lint LoginSheetComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LoginSheetComponent'
  s.version          = '0.1.3'
  s.summary          = 'A simple login sheet component'

 This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'A simple login sheet component that uses swiftUI'

  s.homepage         = 'https://github.com/dossantosBronwyn/ReusableLogInSheet-b'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.authors          = { 'dossantosBronwyn' => 'dossantosbronwyn@gmail.com' }
  s.source           = { :git => 'https://github.com/dossantosBronwyn/ReusableLogInSheet-b.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '16.0'
  s.swift_version = '5.0'
  s.source_files = 'LoginSheetComponent/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LoginSheetComponent' => ['LoginSheetComponent/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
