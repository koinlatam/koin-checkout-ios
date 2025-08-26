Pod::Spec.new do |s|
  s.name         = 'KoinPaymentCheckout'
  s.version      = '1.0.0'
  s.summary      = 'SDK de pagamentos Koin para iOS.'
  s.description  = 'Framework binário distribuído via XCFramework.'
  s.homepage     = 'https://github.com/koinlatam/koin-checkout-ios'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'Koin' => 'victor.santos@koin.com' }
  s.platform     = :ios, '15.0'

  s.source = {
    :http => 'https://koinlatam.github.io/koin-checkout-ios/artifacts/KoinPaymentCheckout.xcframework.zip'
  }

  s.vendored_frameworks = 'KoinPaymentCheckout.xcframework'
  s.requires_arc = true
  s.static_framework = true
end