// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Components",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Components",
            targets: ["Components"]),
    ],
    dependencies: [
        .package(name: "FloatingPanel", url: "https://github.com/scenee/FloatingPanel", .upToNextMajor(from: .init(2, 0, 0))),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "Components",
            dependencies: [
                .productItem(name: "FloatingPanel", package: "FloatingPanel", condition: .when(platforms: [.iOS])),
            ]),
        .testTarget(
            name: "ComponentsTests",
            dependencies: ["Components"]),
    ]
)
