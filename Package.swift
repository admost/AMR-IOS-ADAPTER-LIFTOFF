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
        .package(url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git", .exact("7.7.0"))
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
            url: "https://github.com/admost/AMR-IOS-ADAPTER-LIFTOFF/releases/download/7.7.0/AMRAdapterVungle.xcframework.zip",
            checksum: "9f510d7640a083a899a1ee08def1573223fc32b7f6543449821e2534600a2272"
        )
    ]
)
