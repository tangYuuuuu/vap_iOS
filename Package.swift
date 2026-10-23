// swift-tools-version: 5.7
import PackageDescription

let package = Package(
    name: "vap_iOS",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "iOSVAPPlayer",
            targets: ["iOSVAPPlayer"]
        )
    ],
    targets: [
        .target(
            name: "iOSVAPPlayer",
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
                .headerSearchPath("Classes/Controllers"),
                .headerSearchPath("Classes/Controllers/Decoders"),
                .headerSearchPath("Classes/Models"),
                .headerSearchPath("Classes/MP4Parser"),
                .headerSearchPath("Classes/Utils"),
                .headerSearchPath("Classes/Utils/Categorys"),
                .headerSearchPath("Classes/Utils/Logger"),
                .headerSearchPath("Classes/Views"),
                .headerSearchPath("Classes/Views/Metal"),
                .headerSearchPath("Classes/Views/Metal/Vapx"),
                .headerSearchPath("Classes/Views/OpenGL"),
                .headerSearchPath("Shaders"),
                .headerSearchPath("include"),
                .headerSearchPath("include/iOSVAPPlayer")
            ],
            linkerSettings: [
                .linkedFramework("Metal"),
                .linkedFramework("MetalKit")
            ]
        )
    ]
)
