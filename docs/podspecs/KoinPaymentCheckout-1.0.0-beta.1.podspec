Pod::Spec.new do |s|
  s.name        = 'KoinPaymentCheckout'
  s.version     = '1.0.0-beta.1'
  s.summary     = 'Koin Checkout SDK'
  s.description = 'SDK da Koin para integração de pagamentos no iOS.'
  s.homepage    = 'https://koinlatam.github.io/koin-checkout-ios/'
  s.license     = { :type => 'Proprietary', :text => 'Copyright (c) 2025 Koin. All rights reserved.' }
  s.authors     = 'Koin'

  s.platform       = :ios, '15.0'
  s.swift_versions = ['5.10', '6.0']

  s.source = {
    :http   => 'https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-beta.1/KoinPaymentCheckout-1.0.0-beta.1.zip',
    :sha256 => '51f3e0e8ed14bd34aae5c24739ddd63904123db6f5d2948d3c79960350c15bf5'
  }

  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc        = true
  # s.static_framework   = true   # descomente se for estático
  # s.frameworks         = 'WebKit' # adicione se o SDK depender
end