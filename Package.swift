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
                "pop",
                "Examples",
                "Tests",
                "README.md",
                "LICENSE",
                ".github"
            ],
            sources: ["Sources/pop"],
            publicHeadersPath: "include",
            cxxSettings: [
                .headerSearchPath("include")
            ]
        )
    ],
    cxxLanguageStandard: .cxx11
)
