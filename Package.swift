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
      url: "https://github.com/EbrahimTahernejad/TLSServer/releases/download/0.1.1/TLSServer.xcframework.zip",
      checksum: "40c66b30894896be471afae714f6797ba3b14f0fbc452d68ab235dc269edc8a9"
    )
  ]
)
