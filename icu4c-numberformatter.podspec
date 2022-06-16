#
# Be sure to run `pod lib lint icu.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'icu4c-numberformatter'
  s.version          = '0.1.0'
  s.summary          = 'A pre-built set of ICU binaries'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
A pre-built set of ICU binaries used to provide the functionality of short number formatters.
                       DESC

  s.homepage         = 'https://github.com/kerrmarin/icu4c-numberformatter'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'kerrmarin' => 'kerr@kerrmarin.com' }
  s.source           = { :git => 'https://github.com/kerrmarin/icu4c-numberformatter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '14.0'

  s.static_framework = true
  s.source_files = "product/include/**/*.{h}"
  s.header_mappings_dir = "product/include"
  s.public_header_files = "product/include/**/*.{h}"
  s.vendored_frameworks = "product/frameworks/icudata.xcframework", "product/frameworks/icui18n.xcframework", "product/frameworks/icuio.xcframework", "product/frameworks/icuuc.xcframework"

end
