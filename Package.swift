// swift-tools-version: 5.6

import PackageDescription

let package = Package(
    name: "ios-dependency-analyzer",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "tuist-dependency-analyzer", targets: ["tuist-dependency-analyzer"])
    ],
    dependencies: [
        .package(url: "https://github.com/tuist/ProjectAutomation", .upToNextMajor(from: "3.11.0")),
        .package(url: "https://github.com/apple/swift-syntax", revision: "b0fc9a0871564044d31daa8c31cef8fffcf90c5e")
    ],
    targets: [
        .executableTarget(
            name: "tuist-dependency-analyzer",
            dependencies: [
                .product(name: "ProjectAutomation", package: "ProjectAutomation"),
                .product(name: "SwiftSyntax", package: "swift-syntax"),
                .product(name: "SwiftSyntaxParser", package: "swift-syntax"),
                .product(name: "SwiftSyntaxBuilder", package: "swift-syntax")
            ],
            path: "Sources/ios-dependency-analyzer"
        )
    ]
)
