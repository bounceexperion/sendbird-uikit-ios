// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SendbirdUIKit",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SendbirdUIKit",
            targets: ["SendbirdUIKit"]
        ),
        .library(
            name: "SendbirdUIMessageTemplate",
            targets: ["SendbirdUIMessageTemplateTarget"]
        ),
    ],
    dependencies: [
        .package(
            name: "SendbirdChatSDK",
            url: "https://github.com/sendbird/sendbird-chat-sdk-ios",
            from: "4.23.1"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "SendbirdUIKit",
            url: "https://github.com/sendbird/sendbird-uikit-ios/releases/download/3.29.1/SendbirdUIKit.xcframework.zip", // SendbirdUIKit_URL
            checksum: "153f383cf88fa78d240ba03a99852a1cf73f16df00e626933d815d4914968c5f" // SendbirdUIKit_CHECKSUM
        ),
        .binaryTarget(
            name: "SendbirdUIMessageTemplate",
            url: "https://github.com/sendbird/sendbird-uikit-ios/releases/download/3.29.1/SendbirdUIKit.xcframework.zip", // SendbirdUIKit_URL
            checksum: "b5e13a159fd259f88ed7e6afcd711693820e385e2ac7742f4f0090305f0b00ad" // SendbirdUIMessageTemplate_CHECKSUM
        ),
        .target(
            name: "SendbirdUIKit",
            dependencies: [
                .target(name: "SendbirdUIKit"),
                .target(name: "SendbirdUIMessageTemplate"),
                .product(name: "SendbirdChatSDK", package: "SendbirdChatSDK")
            ],
            path: "Framework/Dependency",
            exclude: ["../../Sample", "../../Sources"]
        ),
        .target(
            name: "SendbirdUIMessageTemplateTarget",
            dependencies: [
                .target(name: "SendbirdUIMessageTemplate"),
                .product(name: "SendbirdChatSDK", package: "SendbirdChatSDK")
            ],
            path: "Framework/Module/MessageTemplate",
            exclude: ["../../Sample", "../../Sources"]
        ),
    ]
)
