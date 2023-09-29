# TLSServer

A simple TLS-enabled HTTP server built with golang to use in Swift.

## Usage

### Start the Server
```swift
guard
  let server = TLSServerInstance(
    "/folder/to/server",
    certPath: "/path/to/cert.pem",
    keyPath: "/path/to/key.pem",
    port: "3000"
  )
else {
    // Handle Error
}
server.start()
```

## Stop the Server
```swift
server.stop()
```
