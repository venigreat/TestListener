Pod::Spec.new do |spec|


  spec.name         = "TestListener"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of TestListener."
  spec.description      = <<-DESC
      Test listener
  DESC

  spec.homepage     = "http://EXAMPLE/TestListener"

  spec.license          = { :type => 'MIT', :file => 'LICENSE' }

  spec.author             = { "Belyaev Andrey" => "asbelyaew@gmail.com" }

  spec.source       = { :git => 'https://github.com/venigreat/TestListener.git', :branch => 'main' }

  spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  spec.exclude_files = "Classes/Exclude"
  spec.framework  = "XCTest"
end
