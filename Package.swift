// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyData",
    
    // MARK: Platform
    platforms: [
        .iOS(.v11)
    ],
    
    //MARK: Products
    products: [
        .library(
            name: "SwiftyData",
            targets: ["SwiftyData"]),
    ],
    
    //MARK: Dependencies
    dependencies: [],
    
    //MARK: Targets
    targets: [
        .target(
            name: "SwiftyData",
            dependencies: []),
        .testTarget(
            name: "SwiftyDataTests",
            dependencies: ["SwiftyData"]),
    ]
)
