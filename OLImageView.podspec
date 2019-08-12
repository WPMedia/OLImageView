Pod::Spec.new do |s|
  s.name         = "OLImageView"
  s.version      = "1.6.0"
  s.summary      = "Animated GIFs implemented the right way."
  s.homepage     = "https://www.github.com/ondalabs/OLImageView"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Diego Torres" => "contact@dtorres.me" }
  s.source       = { :git => "https://github.com/ondalabs/OLImageView.git", :tag => s.version.to_s }
  s.platform     = :ios, :tvos
  s.ios.deployment_target = '5.0'
  s.tvos.deployment_target = '9.0'
  s.framework  = 'ImageIO', 'MobileCoreServices', 'QuartzCore'
  s.requires_arc = true
  s.default_subspec = 'Core'

  s.subspec 'Core' do |core|
    core.source_files = 'OLImage.{h,m}', 'OLImageView.{h,m}', 'OLImageViewDelegate.h'
  end
end
