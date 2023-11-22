Pod::Spec.new do |s|
  s.name = 'WalletKit'
  s.swift_version = '5.8'
  s.ios.deployment_target = '14.0'
  s.version = '0.0.2'
  s.source = { :git => 'https://github.com/usewalletkit/walletkit-ios.git', :tag => s.version.to_s }
  s.authors = { 'WalletKit' => 'info@usewalletkit.com' }
  s.license = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.homepage = 'https://usewalletkit.com'
  s.summary = 'WalletKit iOS SDK'
  s.description = 'The best API to create gasless wallets for your users. Build mobile-first web3 apps with unmatched user experience.'
  s.source_files = 'Sources/WalletKit/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6'
  s.dependency 'KeychainAccess', '~> 4.2'
end
