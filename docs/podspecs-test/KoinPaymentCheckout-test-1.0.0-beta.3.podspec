Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = 'test-1.0.0-beta.3'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'SDK da Koin para integração de pagamentos no iOS.'
  s.homepage    = 'https://koinlatam.github.io/koin-checkout-ios/'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = ['5.10', '6.0']
  s.source = { :http => 'https://koinlatam.github.io/koin-checkout-ios/releases-test/test-1.0.0-beta.3/KoinPaymentCheckout-test-1.0.0-beta.3.zip', :sha256 => 'fda198a4feee675ebb973a23c9e9de8c91a6c750e4f7d6b29825a3a7d24ef85e' }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
end
