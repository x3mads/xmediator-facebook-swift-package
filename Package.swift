// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorFacebook",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorFacebook", targets: ["XMediatorFacebookTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/facebook/FBAudienceNetwork.git", exact: "6.21.1"),
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
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorFacebook",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorFacebook/XMediatorFacebook-6.21.1.0.zip",
            checksum: "938af1a0ffda22e6827c30ffb5e48b3627634ad287907428b406c9a1f5151918"
        ),
    ]
)
