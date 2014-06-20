#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Artsy+UILabels"
  s.version          = "0.1.0"
  s.summary          = "A short description of Artsy+UILabels."
  s.description      = <<-DESC
                       An optional longer description of Artsy+UILabels

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/Orta/Artsy+UILabels"
  s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Orta" => "orta.therox@gmail.com" }
  s.source           = { :git => "https://github.com/Orta/Artsy+UILabels.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/EXAMPLE'

  # s.platform     = :ios, '5.0'
  # s.ios.deployment_target = '5.0'
  # s.osx.deployment_target = '10.7'
  s.requires_arc = true

  s.source_files = 'Pod/Classes'
  s.resources = 'Pod/Assets/*.png'

  s.ios.exclude_files = 'Pod/Classes/osx'
  s.osx.exclude_files = 'Pod/Classes/ios'
  
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'
  # s.dependency 'AFNetworking', '~> 2.3'
end
