// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorFacebook",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "XMediatorFacebook", targets: ["XMediatorFacebookTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.22.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.145.0")),
    ],
    targets: [
        .target(
            name: "XMediatorFacebookTarget",
            dependencies: [
                .target(name: "XMediatorFacebook"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "FBAudienceNetwork", package: "FBAudienceNetwork"),
            ],
            path: "XMediatorFacebookTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorFacebook",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorFacebook/XMediatorFacebook-6.22.1.0.zip",
            checksum: "ed6525d1deccac02cc7da3ec0fe25af6240c37661956a69a266d630b9566427e"
        ),
    ]
)
