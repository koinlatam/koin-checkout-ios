Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0-build.2.2'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'SDK da Koin para integração de pagamentos no iOS.'
  s.homepage    = 'https://koinlatam.github.io/koin-checkout-ios/'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = ['5.10', '6.0']
  s.source = { :http => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.2.2/KoinPaymentCheckout.zip', :sha256 => 'd037174b74c76b84e708eeb94b762b51a7d191707b0084d771bbef7a50773eee' }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
end
