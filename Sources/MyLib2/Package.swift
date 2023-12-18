// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
   name: "MyPackage2",
   products: [
       .library(name: "MyLib2",
                targets: ["MyLib2"]),
   ],
   dependencies: [
       .package(path: "../MyLib"),
   ],
   targets: [
       .target(name: "MyLib2",
               dependencies: [.product(name: "MyLib", package: "MyLib")],
               path: "Model"
              )
   ]
)
