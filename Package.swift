// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "vap_iOS",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "QGVAPplayer",
            targets: ["QGVAPplayer"]
        )
    ],
    targets: [
        .target(
            name: "QGVAPplayer",
            path: "iOS/QGVAPlayer/QGVAPlayer",
            exclude: [
                "Info.plist",
                ".DS_Store"
            ],
            sources: [
                "Classes",
                "Shaders"
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Classes"),
                .headerSearchPath("Shaders")
            ],
            linkerSettings: [
                .linkedFramework("Metal"),
                .linkedFramework("MetalKit")
            ]
        )
    ]
)
