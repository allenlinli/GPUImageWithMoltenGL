Pod::Spec.new do |s|
  s.name     = 'GPUImageWithMoltenGL'
  s.module_name = 'GPUImage'
  s.version  = '1.0.5'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/BradLarson/GPUImage'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }
  s.source   = { :git => 'https://github.com/allenlinli/GPUImageWithMoltenGL.git', :tag => "#{s.version}" }
  
  s.vendored_frameworks = "GPUImage.framework"
  s.resources = 'framework/Resources/*.png'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }
  s.dependency "MoltenGL", "~> 0.23.0"
  s.public_header_files = 'framework/Source/**/*.h'
  s.source_files = 'framework/Source/**/*.h'

  s.ios.deployment_target = '5.0'
  s.ios.exclude_files = 'framework/Source/Mac'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']
  s.platform     = :ios, "8.0"
end
