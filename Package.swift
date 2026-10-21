// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorFacebook",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "XMediatorFacebook", targets: ["XMediatorFacebookTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.22.0"),
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
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorFacebook/XMediatorFacebook-6.22.0.0.zip",
            checksum: "c95578d13fc2e022298d6e910a6f4fe6169137054ef93a9d087eefd01029495c"
        ),
    ]
)
