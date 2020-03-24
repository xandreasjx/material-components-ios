// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Material Components iOS",
    platforms: [ .iOS(.v10) ],
    products: [
        .library(name: "MaterialTextFields", targets: ["MaterialTextFieldsT"]),
    ],
    dependencies:[
        .package(url:"file:///Users/bernix01/extras/material-internationalization-ios", from: "2.0.0"),
        .package(url:"file:///Users/bernix01/extras/material-text-accessibility-ios", from: "2.0.0")
    ],
    targets: [
        .target(name: "MaterialTextFieldsT", 
                dependencies:[
                    .target(name:"AnimationTiming"),
                    .target(name:"Buttons"),
                    .target(name:"Elevation"),
                    .target(name:"Typography"),
                    .target(name:"Math"),
                    .target(name:"Palettes"),
                    .target(name:"Container")
                    "MDFInternationalization"
                ], 
                path: "components/TextFields/src/"),
                // sources: [
                //     "components/TextFields/src/*.{h,m}",
                //     "components/TextFields/src/private/*.{h,m}"
                // ],
                // publicHeadersPath: "components/TextFields/src/"),
        .target(name: "AnimationTiming",
                path: "components/AnimationTiming/src/"),
        .target(name: "Container",
                path: "components/schemes/Container/src/"),
        .target(name: "Buttons",
                dependencies: [
                    "MDFInternationalization",
                    "MDFTextAccessibility",
                    .target(name:"Elevation"),
                    .target(name:"Ink"),
                    .target(name:"Ripple"),
                    .target(name:"ShadowElevations"),
                    .target(name:"ShadowLayer"),
                    .target(name:"Shapes"),
                    .target(name:"Typography"),
                    .target(name:"Math")
                ], 
                path: "components/Buttons/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Elevation",
                dependencies: [
                    .target(name:"Availability"),
                    .target(name:"Color"),
                    .target(name:"Math")
                ], 
                path: "components/Elevation/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Typography",
                dependencies: [
                    .target(name: "Application"),
                    .target(name: "Math")
                ], 
                path: "components/Typography",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Math", 
                path: "components/private/Math/src/",
                sources: [
                    "components/private/Math/src/*.{h,m}",
                ], 
                publicHeadersPath:"components/private/Math/src/"),
        .target(name: "Color",
                dependencies: [
                    "Availability",
                ], 
                path: "components/private/Color"),
        .target(name: "Palettes", 
                path: "components/Palettes/src/",
                sources: [
                    "components/Palettes/src/src/*.{h,m}",
                    "components/Palettes/src/src/private/*.{h,m}"
                ],
                publicHeadersPath:"components/Palettes/src/"),
        .target(name: "Ink",
                dependencies: [
                    .target(name: "Availability"),
                    .target(name: "Color"),
                    .target(name: "Math")
                ], 
                path: "components/Ink/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Ripple",
                dependencies:[
                    .target(name:"AnimationTiming"),
                    .target(name:"Availability"),
                    .target(name:"Color"),
                    .target(name:"Math")
                ], 
                path: "components/Ripple",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "ShadowElevations", 
                path: "components/ShadowElevations",
                sources: [
                    "src/*.{h,m}",
                ], 
                publicHeadersPath:"src/"),
        .target(name: "ShadowLayer", 
                path: "components/ShadowLayer",
                sources: [
                    "src/*.{h,m}",
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Shapes",
                dependencies:[
                    .target(name:"ShadowLayer"),
                    .target(name:"Color"),
                    .target(name:"Math")
                ], 
                path: "components/Shapes/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Availability", 
                path: "components/Availability/",
                sources: [
                    "components/Availability/src/*.{h,m}",
                ],
                publicHeadersPath:"components/Availability/src/"),
        .target(name: "Application", 
                path: "components/private/Application/src/",
                publicHeadersPath:"components/private/Application/src/")
    ]
)