Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0-build.7'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'Koin SDK for payment integration on iOS.'
  s.homepage    = 'https://koinlatam.github.io/koin-checkout-ios/'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = ['5.10', '6.0']
  s.source = {
    :http   => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.7/KoinPaymentCheckout-1.0.0-build.7.zip',
    :sha256 => '9567d1db8cc9bc90d0b047b1fc9515657dcfa2303b1ce784a8e2af75e1aaf446'
  }
  s.vendored_frameworks = 'KoinPaymentCheckout-1.0.0-build.7.xcframework'
  s.requires_arc        = true
  s.dependency 'PayPal', '2.0.0'
end
