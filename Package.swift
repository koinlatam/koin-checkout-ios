// swift-tools-version: 6.1
import PackageDescription

let package = Package(
    name: "KoinPaymentCheckout",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "KoinPaymentCheckout", targets: ["KoinPaymentCheckout"])
    ],
    targets: [
        .binaryTarget(
            name: "KoinPaymentCheckout",
            url: "https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.11/KoinPaymentCheckout.xcframework.zip",
            checksum: "323b9dd87e69146362613d7f12e1fb04e34c234924c4ba2a100d6050bc081645"
        )
    ]
)
