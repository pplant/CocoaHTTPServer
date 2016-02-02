Pod::Spec.new do |s|
  s.name             = "CocoaHTTPServer"
  s.version          = "2.3-vl"
  s.summary          = "A small, lightweight, embeddable HTTP server for Mac OS X or iOS applications."

  s.homepage         = "https://github.com/robbiehanson/CocoaHTTPServer"
  s.license          = 'BSD'
  s.author           = { "Robbie Hanson" => "cocoahttpserver@googlegroups.com" }
  s.source           = { :git => "https://github.com/pplant/CocoaHTTPServer.git", :tag => s.version.to_s }
  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'CocoaHTTPServer' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'CFNetwork','Security'
  s.dependency 'CocoaAsyncSocket'
  s.dependency 'CocoaLumberjack'
end
