// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "PyIDLE",
    platforms: [
        .iOS(.v17),
        .macOS(.v14)
    ],
    products: [
        .library(
            name: "PyIDLE",
            targets: ["PyIDLE"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "PyIDLE",
            dependencies: [],
            path: "Sources/PyIDLE",
            resources: [
                .process("Resources")
            ]
        ),
        .testTarget(
            name: "PyIDLETests",
            dependencies: ["PyIDLE"],
            path: "Tests/PyIDLETests",
            swiftSettings: [
                .define("TESTING")
            ]
        )
    ]
)
