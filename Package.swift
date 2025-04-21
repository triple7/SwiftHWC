// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftHWC",
    platforms: [
        .iOS("15"),
        .macOS("12")
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SwiftHWC",
            targets: ["SwiftHWC"]),
    ],
    dependencies: [.package(url: "https://github.com/dehesa/CodableCSV.git", from: "0.6.7")],
    targets: [
        .target(
            name: "SwiftHWC",
            dependencies: ["CodableCSV"]),
        .testTarget(
            name: "SwiftHWCTests",
            dependencies: ["SwiftHWC"]
        ),
    ]
)
