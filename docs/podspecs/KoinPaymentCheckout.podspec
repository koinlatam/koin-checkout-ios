Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'Koin SDK for payment integration on iOS.'
  s.homepage    = 'https://github.com/koinlatam/koin-checkout-ios'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = '5.10'
  s.source = {
    :http   => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.7/KoinPaymentCheckout-1.0.0-build.7.zip',
    :sha256 => '0b4acdd201997f178925a84cc03b9aaa17b059c4b2c2d273dfb5bddb042ad451'
  }
  s.vendored_frameworks = 'KoinPaymentCheckout-1.0.0-build.7.xcframework'
  s.requires_arc        = true
  s.static_framework    = false
  s.dependency 'PayPal', '2.0.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
