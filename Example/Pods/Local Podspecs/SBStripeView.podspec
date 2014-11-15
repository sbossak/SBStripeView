#
# Be sure to run `pod lib lint SBStripeView.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SBStripeView"
  s.version          = "0.1.0"
  s.summary          = "Like stripes? Put some in your app"
  s.description      = <<-DESC
                       A simple striped view, used in Train Delay NYC.
                       DESC
  s.homepage         = "https://github.com/sbossak/SBStripeView"
  s.license          = 'MIT'
  s.author           = { "Scott Bossak" => "scottbossak@gmail.com" }
  s.source           = { :git => "https://github.com/sbossak/SBStripeView.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/SBStripeView.*'
  s.resource_bundles = {
    'SBStripeView' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit', 'MapKit'

end
