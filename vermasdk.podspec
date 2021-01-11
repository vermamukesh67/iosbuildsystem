#
#  Be sure to run `pod spec lint vermasdk.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "vermasdk"
  spec.version      = "0.0.4"
  spec.summary      = "A short description of vermasdk."
  spec.description  = "This is demo project to learn the ios build pipeline just like jenkins"
  spec.homepage     = "https://github.com/vermamukesh67/iosbuildsystem.git"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  spec.author             = { "verma mukesh" => "vermamukesh67@gmail.com" }
  spec.source       = { :git => "https://github.com/vermamukesh67/iosbuildsystem.git", :tag => spec.version }
  spec.platform     = :ios, '12.0'
  spec.requires_arc = true
  spec.source_files = "vermasdk/*.{swift}"
  spec.swift_version = "5.0"
  spec.framework = "UIKit"
  # @return [String] the Swift version for the target. If the pod author has provided a set of Swift versions
#         supported by their pod then the max Swift version across all of target definitions is chosen, unless
#         a target definition specifies explicit requirements for supported Swift versions. Otherwise the Swift
#         version is derived by the target definitions that integrate this pod as long as they are the same.
#
def swift_version
  @swift_version ||= begin
    if spec_swift_versions.empty?
      target_definitions.map(&:swift_version).compact.uniq.first
    else
      spec_swift_versions.sort.reverse_each.find do |swift_version|
        target_definitions.all? do |td|
          td.supports_swift_version?(swift_version)
        end
      end.to_s
    end
  end
end

end
