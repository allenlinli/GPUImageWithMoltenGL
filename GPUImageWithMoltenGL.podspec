Pod::Spec.new do |s|
  s.name     = 'GPUImageWithMoltenGL'
  s.version  = '0.2.0'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/BradLarson/GPUImage'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }
  s.source   = { :git => 'https://github.com/allenlinli/GPUImageWithMoltenGL.git', :tag => "#{s.version}" }
  s.platform = :ios
  s.static_framework = true

  s.source_files = 'framework/Source/**/*.{h,m}'
  s.resources = 'framework/Resources/*.png'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  
  s.ios.deployment_target = '5.0'
  s.ios.exclude_files = 'framework/Source/Mac'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation', 'Metal']
  s.ios.dependency "MoltenGL", "~> 0.22.2"
end
