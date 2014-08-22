#
#  Be sure to run `pod spec lint ILParabolicImageView.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  s.name         = "ILParabolicImageView"
  s.version      = "0.0.1"
  s.summary      = "A super simple library to add a moving effect to an image as the phone moves"

  s.description  = %{
                      ILParabolicImageView is a super simple library to add a motion effect to any ImageView
                      perfect for a nice looking splash screen.
                    }

  s.homepage     = "https://github.com/IcaliaLabs/ILParabolicImageView"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Abraham Kuri" => "kurenn@icalialabs.com" }
  s.platform     = :ios
  s.source       = { :git => "https://github.com/IcaliaLabs/ILParabolicImageView.git", :tag => "v0.0.1" }
  s.source_files  = '*.{h,m}'
  s.requires_arc  = true


end
