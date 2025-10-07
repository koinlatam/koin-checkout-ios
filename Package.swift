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
            url: "https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.10/KoinPaymentCheckout.xcframework.zip",
            checksum: "7b8cb97dfad24f6cf94eae9c9667876b208d8db056d957e065440d1940623c70"
        )
    ]
)
