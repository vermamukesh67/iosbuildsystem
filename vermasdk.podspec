#
#  Be sure to run `pod spec lint vermasdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "vermasdk"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of vermasdk."
  spec.description  = "This is demo project to learn the ios build pipeline just like jenkins"
  spec.homepage     = "https://github.com/vermamukesh67/iosbuildsystem.git"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "verma mukesh" => "vermamukesh67@gmail.com" }
  spec.source       = { :git => "https://github.com/vermamukesh67/iosbuildsystem.git", :tag => "#{spec.version}" }

end
