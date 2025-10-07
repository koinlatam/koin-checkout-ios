Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0-build.10'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'Koin SDK for payment integration on iOS.'
  s.homepage    = 'https://github.com/koinlatam/koin-checkout-ios'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = '5.10'
  s.source = {
    :http   => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.10/KoinPaymentCheckout.xcframework.zip',
    :sha256 => '7b8cb97dfad24f6cf94eae9c9667876b208d8db056d957e065440d1940623c70'
  }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
