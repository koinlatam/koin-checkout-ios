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
            url: "https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.12/KoinPaymentCheckout.xcframework.zip",
            checksum: "36c874e8bf3f0c118e98538c21f6e3469bfb70d5974c4a1b9954ae79f517ad32"
        )
    ]
)
