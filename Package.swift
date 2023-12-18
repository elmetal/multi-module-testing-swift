// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "multi-module-testing-swift",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "multi-module-testing-swift",
            targets: ["multi-module-testing-swift"]),
    ],
    dependencies: [
        .package(path: "Sources/MyLib"),
        .package(path: "Sources/MyLib2"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "multi-module-testing-swift",
            dependencies: [.product(name: "MyLib", package: "MyLib"),
                           .product(name: "MyLib2", package: "MyLib2")],
            path: "Sources/App"
        ),
        .testTarget(
            name: "multi-module-testing-swiftTests",
            dependencies: ["multi-module-testing-swift"],
            path: "Tests/App"
        ),
    ]
)
