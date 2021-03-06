#
# Be sure to run `pod lib lint Swash.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'Swash'
  s.version          = '3.1.0'
  s.summary          = 'A simple, safe, and expressive abstraction of UIFont with baked-in support for dynamic type.'
  s.homepage         = 'https://github.com/Mindgrub/Swash'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = 'Mindgrub'
  s.source           = { :git => 'https://github.com/Mindgrub/Swash.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mindgrub'

  s.ios.deployment_target = '8.2'
  s.tvos.deployment_target = "9.0"
  s.watchos.deployment_target = "2.0"
  s.swift_version = '5.1'

  s.source_files = 'Source/**/*.swift'
end
