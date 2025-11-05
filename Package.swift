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
            url: "https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.13/KoinPaymentCheckout.xcframework.zip",
            checksum: "e0b75a18ded0419131ba04fea37b09b80c32ea529a545794d7a5d59dc7cda6a4"
        )
    ]
)
