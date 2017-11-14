#
# Be sure to run `pod lib lint NFrameWork.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'GoogleAnalytics'
s.version          = '0.1.0'
s.summary          = 'A short description of GoogleAnalytics.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://www.google.com/analytics'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'Copyright', :text => 'Copyright 2017 Google Inc.' }
s.author           = { 'neerajgoyal12' => 'neerajgoyal12@gmail.com' }
s.source           = { :git => 'https://github.com/neerajgoyal12/GoogleAnalytics.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

s.ios.deployment_target = '8.0'

s.frameworks = 'CoreData', 'SystemConfiguration'
s.libraries = 'c++', 'sqlite3', 'z'
s.vendored_frameworks = 'GoogleAnalytics.framework'

s.prepare_command = "mkdir -p GoogleAnalytics.framework/Modules && mv Headers/Public GoogleAnalytics.framework/Headers && mv Libraries/libGoogleAnalytics.a GoogleAnalytics.framework/GoogleAnalytics && echo 'framework module GoogleAnalytics {\n  umbrella header \"GoogleAnalytics.h\"\n\n  export *\n  module * { export * }\n}' > GoogleAnalytics.framework/Modules/module.modulemap && echo '#import \"GAI.h\"\n#import \"GAIDictionaryBuilder.h\"\n#import \"GAIEcommerceFields.h\"\n#import \"GAIEcommerceProduct.h\"\n#import \"GAIEcommerceProductAction.h\"\n#import \"GAIEcommercePromotion.h\"\n#import \"GAIFields.h\"\n#import \"GAILogger.h\"\n#import \"GAITrackedViewController.h\"\n#import \"GAITracker.h\"' > GoogleAnalytics.framework/Headers/GoogleAnalytics.h && rm -rf Headers Libraries"
end
