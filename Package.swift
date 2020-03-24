// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "Material Components iOS",
    products: [
        .library(name: "MaterialTextFields", targets: ["MaterialTextField"]),
    ],
    dependecies:[
        .package("../material-internationalization-ios", 
        ),
        .package("../material-text-accessibility-ios",        
        )
    ],
    targets: [
        .target(name: "MaterialTextFields", 
                path: "components/TextFields", 
                dependecies:[
                    "AnimationTiming",
                    "Buttons",
                    "Elevation",
                    "Typography",
                    "Math",
                    "Palettes",
                    "MDFInternationalization"
                ], 
                publicHeadersPath:"components/TextFields/src",
                sources: [
                    "components/TextFields/src/*.{h,m}",
                    "components/TextFields/src/private/*.{h,m}"
                ]),
        .target(name: "AnimationTiming", 
                path: "components/AnimationTiming", 
                publicHeadersPath:"components/AnimationTiming/src",
                sources: [
                    "components/AnimationTiming/src/*.{h,m}",
                    "components/AnimationTiming/src/private/*.{h,m}"
                ]),
        .target(name: "Buttons", 
                path: "components/Buttons", 
                publicHeadersPath:"components/Buttons/src",
                sources: [
                    "components/Buttons/src/*.{h,m}",
                    "components/Buttons/src/private/*.{h,m}"
                ],
                dependecies: [
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
                ]),
        .target(name: "Elevation", 
                path: "components/Elevation", 
                publicHeadersPath:"components/Elevation/src",
                sources: [
                    "components/Elevation/src/*.{h,m}",
                    "components/Elevation/src/private/*.{h,m}"
                ],
                dependecies: [
                    "Availability",
                    "Color",
                    "Math"
                ]),
        .target(name: "Typography", 
                path: "components/Typography", 
                publicHeadersPath:"components/Typography/src",
                sources: [
                    "components/Typography/src/*.{h,m}",
                    "components/Typography/src/private/*.{h,m}"
                ],
                dependecies: [
                    "Application",
                    "Math"
                ]),
        .target(name: "Math", 
                path: "components/private/Math", 
                publicHeadersPath:"components/private/Math/src",
                sources: [
                    "components/private/Math/src/*.{h,m}",
                ]),
        .target(name: "Color", 
                path: "components/schemes/Color", 
                publicHeadersPath:"components/schemes/Color/src",
                sources: [
                    "components/schemes/Color/src/*.{h,m}"
                ],
                dependecies: [
                    "Availability",
                    "Color"
                ]),
        .target(name: "Palettes", 
                path: "components/Palettes",
                publicHeadersPath:"components/Palettes/src",
                sources: [
                    "components/Palettes/src/*.{h,m}",
                    "components/Palettes/src/private/*.{h,m}"
                ]),
        .target(name: "MDFInternationalization", 
                pa,th: "components/MDFInternationalization")
        .target(name: "MDFTextAccessibility", 
                pa,th: "components/MDFTextAccessibility")
        .target(name: "Ink", 
                path: "components/Ink", 
                publicHeadersPath:"components/Ink/src",
                sources: [
                    "components/Ink/src/*.{h,m}",
                    "components/Ink/src/private/*.{h,m}"
                ],
                dependecies: [
                    "Availability",
                    "Color",
                    "Math"
                ]),
        .target(name: "Ripple", 
                path: "components/Ripple", 
                publicHeadersPath:"components/Ripple/src",
                sources: [
                    "components/Ripple/src/*.{h,m}",
                    "components/Ripple/src/private/*.{h,m}"
                ],
                dependecies:[
                    "AnimationTiming",
                    "Availability",
                    "Color",
                    "Math"
                ]),
        .target(name: "ShadowElevations", 
                path: "components/ShadowElevations", 
                publicHeadersPath:"components/ShadowElevations/src",
                sources: [
                    "components/ShadowElevations/src/*.{h,m}",
                ]),
        .target(name: "ShadowLayer", 
                path: "components/ShadowLayer", 
                publicHeadersPath:"components/ShadowLayer/src",
                sources: [
                    "components/ShadowLayer/src/*.{h,m}",
                ]),
        .target(name: "Shapes", 
                path: "components/Shapes", 
                publicHeadersPath:"components/Ripple/src",
                sources: [
                    "components/Ripple/src/*.{h,m}",
                    "components/Ripple/src/private/*.{h,m}"
                ],
                dependecies:[
                    "ShadowLayer",
                    "Color",
                    "Math"
                ]),
        .target(name: "Availability", 
                path: "components/Availability", 
                publicHeadersPath:"components/Availability/src",
                sources: [
                    "components/Availability/src/*.{h,m}",
                ]),
        .target(name: "Application", 
                path: "components/private/Application", 
                publicHeadersPath:"components/private/Application/src",
                sources: [
                    "components/private/Application/src/*.{h,m}"
                ])
    ]
)