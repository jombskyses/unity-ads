// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "UnityAds",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "UnityAds",
            targets: ["unityadsPlugin"])
    ],
    dependencies: [
        .package(url: "https://github.com/ionic-team/capacitor-swift-pm.git", from: "7.0.0")
    ],
    targets: [
        .target(
            name: "unityadsPlugin",
            dependencies: [
                .product(name: "Capacitor", package: "capacitor-swift-pm"),
                .product(name: "Cordova", package: "capacitor-swift-pm")
            ],
            path: "ios/Sources/unityadsPlugin"),
        .testTarget(
            name: "unityadsPluginTests",
            dependencies: ["unityadsPlugin"],
            path: "ios/Tests/unityadsPluginTests")
    ]
)