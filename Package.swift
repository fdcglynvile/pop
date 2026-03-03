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
            path: ".",
            exclude: [
                "Examples",
                "Tests",
                "README.md",
                "LICENSE",
                ".github",
                "Sources",
                "include",
                "pop/pop-ios-Info.plist",
                "pop/pop-osx-Info.plist",
                "pop/pop-tvos-Info.plist"
            ],
            sources: ["pop"],
            publicHeadersPath: "pop",
            cSettings: [
                .headerSearchPath(".")
            ],
            cxxSettings: [
                .headerSearchPath(".")
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
