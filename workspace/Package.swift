import PackageDescription

let package = Package(
  name: "SwiftServer",
  dependencies: [
    .Package(url: "https://github.com/loganwright/vapor.git", majorVersion: 0)
  ]
)
