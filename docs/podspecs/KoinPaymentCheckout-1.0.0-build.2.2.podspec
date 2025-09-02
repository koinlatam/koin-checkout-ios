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
  s.source = { :http => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.2.2/KoinPaymentCheckout.zip', :sha256 => '145687dea6774fa0774751adb3c744c95a4d717f31f79d9567e7089257228458' }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
end
