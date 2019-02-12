
Pod::Spec.new do |s|
  s.name         = "RNMatomoSdk"
  s.version      = "1.0.0"
  s.summary      = "RNMatomoSdk"
  s.description  = <<-DESC
                  RNMatomoSdk
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNMatomoSdk.git", :tag => "master" }
  s.source_files  = "RNMatomoSdk/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  