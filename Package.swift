// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "AMRAdapterLiftoff",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "AMRAdapterLiftoff",
            targets: ["AMRAdapterLiftoff"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/admost/AMR-IOS-SDK.git", from: "1.5.84"),
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", from: "7.7.1")
    ],
    targets: [
        .target(
            name: "AMRAdapterLiftoff",
            dependencies: [
                "AMRAdapterLiftoffLib",
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager"),
                .product(name: "AMRSDK", package: "AMR-IOS-SDK")
            ],
            path: "AMRAdapterLiftoff",
            exclude: ["Libs"],
            linkerSettings: [
                .linkedLibrary("c++")
            ]
        ),
        .binaryTarget(
            name: "AMRAdapterLiftoffLib",
            url: "https://github.com/admost/AMR-IOS-ADAPTER-LIFTOFF/releases/download/7.7.1/AMRAdapterVungle.xcframework.zip",
            checksum: "9576ee7e2603c8acef4ef96770de446c8300052a07780945926b5bc7e87494f6"
        )
    ]
)
