// swift-tools-version: 5.6
import PackageDescription

let package = Package(
    name: "Jukerstone",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "Jukerstone",
            targets: ["Jukerstone"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "JukerstoneSDK",
            path: "Sources/JukerstoneSDK.xcframework"
        ),
        .target(
            name: "Jukerstone",
            dependencies: ["JukerstoneSDK"]
        ),
        .testTarget(
            name: "JukerstoneTests",
            dependencies: ["Jukerstone"]
        )
    ]
)
