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
      url: "https://github.com/EbrahimTahernejad/TLSServer/releases/download/0.1.3/TLSServer.xcframework.zip",
      checksum: "3b9a48628a2727b8e753f347477d95205304a14eb7e7768d7a68e2c5d6bc05cc"
    )
  ]
)
