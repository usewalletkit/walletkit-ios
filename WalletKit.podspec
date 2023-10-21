Pod::Spec.new do |s|
  s.name = 'WalletKit'
  s.ios.deployment_target = '11.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '11.0'
  s.watchos.deployment_target = '4.0'
  s.version = ''
  s.source = { :git => 'https://github.com/usewalletkit/walletkit-ios.git', :tag => s.version.to_s }
  s.authors = 'WalletKit'
  s.license = 'Proprietary'
  s.homepage = 'https://github.com/OpenAPITools/openapi-generator'
  s.summary = 'WalletKit Swift SDK'
  s.source_files = 'Sources/WalletKit/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
end
