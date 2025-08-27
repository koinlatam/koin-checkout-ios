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
  s.source = { :http => 'https://koinlatam.github.io/koin-checkout-ios/releases/test-1.0.0-beta.3/KoinPaymentCheckout.zip', :sha256 => '0504dffe62cc16d9e47c9f4dfe094920a062f64aea92b0303c59750e57ae5b95' }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
end
