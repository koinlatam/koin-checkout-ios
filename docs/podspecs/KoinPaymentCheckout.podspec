Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0-build.7'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'Koin SDK for payment integration on iOS.'
  s.homepage    = 'https://github.com/koinlatam/koin-checkout-ios'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = '5.10'
  s.source = {
    :http   => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.7/KoinPaymentCheckout.xcframework.zip',
    :sha256 => '0b6eeac555ed6dfcd51b1b3b37b70337f30be8756b88e81daad54d4a2791ca18'
  }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
  s.static_framework    = true
  s.dependency 'PayPal', '2.0.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
