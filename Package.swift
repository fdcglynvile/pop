// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "pop",
    platforms: [
        .iOS(.v12),
        .macOS(.v10_13),
        .tvOS(.v12)
    ],
    products: [
        .library(
            name: "pop",
            targets: ["pop"]
        )
    ],
    targets: [
        .target(
            name: "pop",
            exclude: [
                "pop-ios-Info.plist",
                "pop-osx-Info.plist",
                "pop-tvos-Info.plist"
            ],
            publicHeadersPath: ".",
            cxxSettings: [
                .headerSearchPath(".")
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
