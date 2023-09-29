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
      url: "https://github.com/EbrahimTahernejad/TLSServer/releases/download/0.1.2/TLSServer.xcframework.zip",
      checksum: "a9f8f8c5fcd33d5f63b99903753811e122ca865e6a5f7051fc181144b7a4702b"
    )
  ]
)
