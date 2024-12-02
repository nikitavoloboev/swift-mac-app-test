import ProjectDescription

let project = Project(
    name: "app",
    targets: [
        .target(
            name: "app",
            destinations: .macOS,
            product: .app,
            bundleId: "io.tuist.app",
            infoPlist: .default,
            sources: ["app/Sources/**"],
            resources: ["app/Resources/**"],
            dependencies: []
        ),
        .target(
            name: "appTests",
            destinations: .macOS,
            product: .unitTests,
            bundleId: "io.tuist.appTests",
            infoPlist: .default,
            sources: ["app/Tests/**"],
            resources: [],
            dependencies: [.target(name: "app")]
        ),
    ]
)
