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
            url: "https://koinlatam.github.io/koin-checkout-ios/releases/1.0.0-build.14/KoinPaymentCheckout.xcframework.zip",
            checksum: "db264cdcaaf42435484188d0062d01648b362703f9460b701a9da2b6b8812a7b"
        )
    ]
)
