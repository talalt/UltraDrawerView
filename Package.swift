// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "UltraDrawerView",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "UltraDrawerView",
            targets: ["UltraDrawerView"]),
    ],
    targets: [
        .target(
            name: "UltraDrawerViewObjCUtils",
            dependencies: [],
            swiftSettings: [
                .unsafeFlags(["-no-verify-emitted-module-interface"])
            ],
            linkerSettings: [
                .linkedFramework("Foundation"),
                .linkedFramework("UIKit")
            ]),
        .target(
            name: "UltraDrawerView",
            dependencies: ["UltraDrawerViewObjCUtils"],
            swiftSettings: [
                .unsafeFlags(["-no-verify-emitted-module-interface"])
            ]
        ),
        .testTarget(
            name: "UltraDrawerViewTests",
            dependencies: ["UltraDrawerView"]),
    ],
    swiftLanguageVersions: [.v5]
)
