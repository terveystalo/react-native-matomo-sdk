
Pod::Spec.new do |s|
  s.name         = "RNMatomoSdk"
  s.version      = "1.0.0"
  s.summary      = "RNMatomoSdk"
  s.description  = <<-DESC
                  RNMatomoSdk
                   DESC
  s.homepage     = "https://tt.cbyte.fi/bitbucket/projects/OSP/repos/react-native-matomo-sdk"
  s.license      = "MIT"
  s.license      = { :type => "MIT", :file => "../LICENSE" }
  s.author       = { "author" => "axel.eirola@terveystalo.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://tt.cbyte.fi/bitbucket/scm/osp/react-native-matomo-sdk.git", :tag => "master" }
  s.source_files  = "RNMatomoSdk/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  