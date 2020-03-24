// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Material Components iOS",
    products: [
        .library(name: "MaterialTextFields", targets: ["MaterialTextFields"]),
    ],
    dependencies:[
        .package(url:"file:///Users/bernix01/extras/material-internationalization-ios", from: "2.0.0"),
        .package(url:"file:///Users/bernix01/extras/material-text-accessibility-ios", from: "2.0.0")
    ],
    targets: [
        .target(name: "MaterialTextFields", 
                dependencies:[
                    "AnimationTiming",
                    "Buttons",
                    "Elevation",
                    "Typography",
                    "Math",
                    "Palettes",
                    "MDFInternationalization"
                ], 
                path: "components/TextFields/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ]),
        .target(name: "AnimationTiming",
                path: "components/AnimationTiming/src/"),
        .target(name: "Buttons",
                dependencies: [
                    "MDFInternationalization",
                    "MDFTextAccessibility",
                    "Elevation",
                    "Ink",
                    "Ripple",
                    "ShadowElevations",
                    "ShadowLayer",
                    "Shapes",
                    "Typography",
                    "Math"
                ], 
                path: "components/Buttons/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Elevation",
                dependencies: [
                    "Availability",
                    "Color",
                    "Math"
                ], 
                path: "components/Elevation/",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Typography",
                dependencies: [
                    "Application",
                    "Math"
                ], 
                path: "components/Typography",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Math", 
                path: "components/private/Math",
                sources: [
                    "Math/src/*.{h,m}",
                ], 
                publicHeadersPath:"Math/src/"),
        .target(name: "Color",
                dependencies: [
                    "Availability",
                ], 
                path: "components/private/Color",
                sources: [
                    "Color/src/*.{h,m}"
                ], 
                publicHeadersPath:"Color/src/"),
        .target(name: "Palettes", 
                path: "components/Palettes",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ],
                publicHeadersPath:"src/"),
        .target(name: "Ink",
                dependencies: [
                    "Availability",
                    "Color",
                    "Math"
                ], 
                path: "components/Ink",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Ripple",
                dependencies:[
                    "AnimationTiming",
                    "Availability",
                    "Color",
                    "Math"
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
                    "ShadowLayer",
                    "Color",
                    "Math"
                ], 
                path: "components/Shapes",
                sources: [
                    "src/*.{h,m}",
                    "src/private/*.{h,m}"
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Availability", 
                path: "components/Availability",
                sources: [
                    "src/*.{h,m}",
                ], 
                publicHeadersPath:"src/"),
        .target(name: "Application", 
                path: "components/private/Application",
                sources: [
                    "src/*.{h,m}"
                ], 
                publicHeadersPath:"src")
    ]
)