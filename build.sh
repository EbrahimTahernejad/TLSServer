mkdir -p build
gomobile bind -iosversion=12.0 -iossimulator-version=12.0 -macos-version=12.0 -target=ios,iossimulator,macos -o build/TLSServer.xcframework .
