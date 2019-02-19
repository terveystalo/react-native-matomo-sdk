require 'json'
package = JSON.parse(File.read('../package.json'))

Pod::Spec.new do |s|
  s.name         = "RNMatomoSdk"
  s.version      = package["version"]
  s.summary      = "RNMatomoSdk"
  s.description  = package["description"]
  s.homepage     = "https://tt.cbyte.fi/bitbucket/projects/OSP/repos/react-native-matomo-sdk"
  s.license      = package['license']
  s.author       = { "author" => "axel.eirola@terveystalo.com" }
  s.platform     = :ios, "9.0"
  s.swift_version = "4.2"
  s.source       = { :git => "https://tt.cbyte.fi/bitbucket/scm/osp/react-native-matomo-sdk.git", :tag => "v#{s.version}" }
  s.source_files  = "RNMatomoSdk/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency "MatomoTracker", "~> 6"

end
