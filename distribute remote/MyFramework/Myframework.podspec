#
#  Be sure to run `pod spec lint Myframework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

	spec.name = "MyFramework"
	spec.version = "1.0.0"
	spec.summary = "A summary"
	spec.description = "A complete description of MyFramework"
	
	spec.platform = :ios, "12.1"
	spec.homepage = "http://EXAMPLE/MyFramework"
	spec.license = "MIT"
	spec.author = { "Vinh Hoang" => "dr.vinhhoang@gmail.com"}
	spec.source = { :git => "https://github.com/drvinhhoang/MyFramework.git", :tag => "1.0.2" }
	spec.source_files = "MyFramework"
	spec.exclude_files = "Classes/Exclude"
	spec.swift_version = "4.2"

end
