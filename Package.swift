// swift-tools-version: 5.7

import PackageDescription

let package = Package(
  name: "TLSServer",
  platforms: [.iOS(.v12)],
  products: [
    .library(name: "TLSServer", targets: ["TLSServer"])
  ],
  targets: [
    .binaryTarget(
      name: "TLSServer",
      url: "https://github.com/EbrahimTahernejad/TLSServer/releases/download/0.1.0/TLSServer.xcframework.zip",
      checksum: "2687c840ddb8cfeb393332d1e8a4ae7c2d52200f12ff7c85688a04ecae66d8b9"
    )
  ]
)
