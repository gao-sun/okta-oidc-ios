// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OktaOidc",
    platforms: [
        .macOS(.v10_10), .iOS(.v11)
    ],
    products: [
        .library(name: "OktaOidc", targets: ["OktaOidc"])
    ],
    targets: [
        .target(name: "OktaOidc", dependencies: [], path: "Okta/OktaOidc", exclude: ["OktaOidc.h"]),
        .testTarget(name: "OktaTests", dependencies: ["OktaOidc"], path: "Tests/OktaOidc")
    ]
)
