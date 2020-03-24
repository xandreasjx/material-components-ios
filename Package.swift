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
                ], 
                publicHeadersPath:"src"),
        .target(name: "AnimationTiming",
                path: "components/AnimationTiming/",
                sources: [
                    "components/AnimationTiming/src/*.{h,m}",
                    "components/AnimationTiming/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/AnimationTiming/src"),
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
                path: "components/Buttons",
                sources: [
                    "components/Buttons/src/*.{h,m}",
                    "components/Buttons/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/Buttons/src"),
        .target(name: "Elevation",
                dependencies: [
                    "Availability",
                    "Color",
                    "Math"
                ], 
                path: "components/Elevation",
                sources: [
                    "components/Elevation/src/*.{h,m}",
                    "components/Elevation/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/Elevation/src"),
        .target(name: "Typography",
                dependencies: [
                    "Application",
                    "Math"
                ], 
                path: "components/Typography",
                sources: [
                    "components/Typography/src/*.{h,m}",
                    "components/Typography/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/Typography/src"),
        .target(name: "Math", 
                path: "components/private/Math",
                sources: [
                    "components/private/Math/src/*.{h,m}",
                ], 
                publicHeadersPath:"components/private/Math/src"),
        .target(name: "Color",
                dependencies: [
                    "Availability",
                ], 
                path: "components/private/Color",
                sources: [
                    "components/private/Color/src/*.{h,m}"
                ], 
                publicHeadersPath:"components/private/Color/src"),
        .target(name: "Palettes", 
                path: "components/Palettes",
                sources: [
                    "components/Palettes/src/*.{h,m}",
                    "components/Palettes/src/private/*.{h,m}"
                ],
                publicHeadersPath:"components/Palettes/src"),
        .target(name: "Ink",
                dependencies: [
                    "Availability",
                    "Color",
                    "Math"
                ], 
                path: "components/Ink",
                sources: [
                    "components/Ink/src/*.{h,m}",
                    "components/Ink/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/Ink/src"),
        .target(name: "Ripple",
                dependencies:[
                    "AnimationTiming",
                    "Availability",
                    "Color",
                    "Math"
                ], 
                path: "components/Ripple",
                sources: [
                    "components/Ripple/src/*.{h,m}",
                    "components/Ripple/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/Ripple/src"),
        .target(name: "ShadowElevations", 
                path: "components/ShadowElevations",
                sources: [
                    "components/ShadowElevations/src/*.{h,m}",
                ], 
                publicHeadersPath:"components/ShadowElevations/src"),
        .target(name: "ShadowLayer", 
                path: "components/ShadowLayer",
                sources: [
                    "components/ShadowLayer/src/*.{h,m}",
                ], 
                publicHeadersPath:"components/ShadowLayer/src"),
        .target(name: "Shapes",
                dependencies:[
                    "ShadowLayer",
                    "Color",
                    "Math"
                ], 
                path: "components/Shapes",
                sources: [
                    "components/Ripple/src/*.{h,m}",
                    "components/Ripple/src/private/*.{h,m}"
                ], 
                publicHeadersPath:"components/Ripple/src"),
        .target(name: "Availability", 
                path: "components/Availability",
                sources: [
                    "components/Availability/src/*.{h,m}",
                ], 
                publicHeadersPath:"components/Availability/src"),
        .target(name: "Application", 
                path: "components/private/Application",
                sources: [
                    "components/private/Application/src/*.{h,m}"
                ], 
                publicHeadersPath:"components/private/Application/src")
    ]
)