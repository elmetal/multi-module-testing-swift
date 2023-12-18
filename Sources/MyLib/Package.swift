// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyLib",
            targets: ["MyModel", "MyView"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyModel",
            path: "Sources/Model"
        ),
        .target(
            name: "MyView",
            dependencies: ["MyModel"],
            path: "Sources/View"
        ),
        .testTarget(
            name: "ModelTests",
            dependencies: ["MyModel"],
            path: "Tests/Model"),
        .testTarget(
            name: "ViewTests",
            dependencies: ["MyView"],
            path: "Tests/View"),
    ]
)
