Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0-build.8'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'Koin SDK for payment integration on iOS.'
  s.homepage    = 'https://github.com/koinlatam/koin-checkout-ios'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'
  s.platform       = :ios, '15.0'
  s.swift_versions = '5.10'
  s.source = {
    :http   => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.8/KoinPaymentCheckout.xcframework.zip',
    :sha256 => 'b4b2c24ca06805e93a6f8373ca0743f67e664a4066210cd8ccddb861f2cf1b55'
  }
  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
  
  s.dependency 'PayPal', '2.0.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }
end
