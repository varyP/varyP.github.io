// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "varyPGithubIo",
    products: [
        .executable(name: "varyPGithubIo", targets: ["varyPGithubIo"])
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.3.0"),
        .package(url: "https://github.com/wacumov/VerifyResourcesExistPublishPlugin", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "varyPGithubIo",
            dependencies: [
                "Publish",
                "VerifyResourcesExistPublishPlugin"
            ]
        )
    ]
)
