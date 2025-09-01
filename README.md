# KoinPaymentCheckout iOS

Official Koin SDK for payment integration in your iOS app. Full support for Pix, Credit Card and BNPL.

Compatible with **SwiftUI** and **UIKit**.

## 🚧 Beta Status

This framework is in beta phase. Versions are distributed through GitHub Pages as ZIP files for manual installation.

## 📦 Installation

### CocoaPods

Add to your `Podfile`:

```ruby
pod 'KoinPaymentCheckout', :podspec => 'https://koinlatam.github.io/koin-checkout-ios/podspecs/KoinPaymentCheckout-1.0.0-build.2.1.podspec'
```

Then run in terminal:

```bash
pod install
```

### Manual

1. Download the latest version: [KoinPaymentCheckout-1.0.0-build.2.1.zip](https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.2.1/KoinPaymentCheckout.zip)
2. Extract the ZIP file
3. Drag `KoinPaymentCheckout.xcframework` into your Xcode project
4. In **Target Settings > General > Frameworks, Libraries, and Embedded Content**, make sure it's marked as "Embed & Sign"

## 🚀 Setup

### 1. Initialization

Initialize the SDK in your `AppDelegate` or SwiftUI app's `@main`:

```swift
import KoinPaymentCheckout

PaymentCheckout.initialize(key: "YOUR_PUBLIC_KEY")
```

## 📱 Usage

### SwiftUI

```swift
import SwiftUI
import KoinPaymentCheckout

struct ContentView: View {
    @State private var checkoutInput: CheckoutInput? = nil

    var body: some View {
        VStack {
            Button("Start Payment") {
                let input = CheckoutInputBuilder(
                    amount: 250.00,
                    referenceId: "checkout123"
                )
                .withAccount("default_account")
                .withPaymentType(.pix)
                .build()
                
                checkoutInput = input
            }
        }
        .sheet(item: $checkoutInput) { input in
            PaymentCheckout.makeCheckoutView(input: input) { result in
                switch result {
                case .success(let data):
                    print("Payment completed: \(data)")
                case .fail(let error):
                    print("Payment error: \(error?.localizedDescription ?? "unknown error")")
                case .canceled:
                    print("Payment canceled")
                }
                checkoutInput = nil
            }
        }
    }
}
```

### UIKit

```swift
import UIKit
import KoinPaymentCheckout

class ViewController: UIViewController {
    func startCheckout() {
        let input = CheckoutInputBuilder(
            amount: 123.45,
            referenceId: "checkout456"
        )
        .withAccount("default_account")
        .withPaymentType(.card)
        .build()

        PaymentCheckout.presentCheckout(from: self, input: input) { result in
            switch result {
            case .success(let data):
                print("Payment completed: \(data)")
            case .fail(let error):
                print("Payment error: \(error?.localizedDescription ?? "unknown error")")
            case .canceled:
                print("Payment canceled")
            }
        }
    }
}
```

## 🔧 Requirements

- iOS 15.0+
- Swift 5.10+ or 6.0+
- Xcode 14.0+

## 📋 Supported Payment Types

- **PIX** (`.pix`)
- **Credit Card** (`.card`)
- **BNPL** (Buy Now, Pay Later)

## 🔐 API Key Configuration

For sample projects, we recommend using an `.xcconfig` configuration file:

1. Create a `Config.xcconfig` file
2. Add your key: `API_KEY = your_key_here`
3. Configure in Xcode under **Project Settings > Configurations**

## 📚 Available Versions

- **1.0.0-beta.1** - [Download](https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-beta.1/KoinPaymentCheckout-1.0.0-beta.1.zip)
- **1.0.0-build.2.1** - [Download](https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.2.1/KoinPaymentCheckout-1.0.0-build.2.1.zip)

## 🤝 Support

For questions or technical support, contact the Koin development team.

## 📄 License

Copyright (c) 2025 Koin. All rights reserved.
