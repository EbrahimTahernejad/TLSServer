mkdir -p build
gomobile bind -a -ldflags '-s -w -extldflags -lresolv' -iosversion=12.0 -target=ios,iossimulator,macos -o build/TLSServer.xcframework .
