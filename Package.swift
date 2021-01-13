// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-tree-sitter-markdown",

    products: [
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
    ],

    dependencies: [
        .package(name: "TreeSitter", url: "https://github.com/unsignedapps/swift-tree-sitter", from: "0.18.0")
    ],

    targets: [
        // Swift Wrapper
        .target(name: "TreeSitterMarkdown", dependencies: [ "TreeSitter", "tree-sitter-markdown" ]),

        // Original tree-sitter-markdown exported from https://github.com/ikatyang/tree-sitter-markdown/
        .target(name: "tree-sitter-markdown", path: "Sources/tree-sitter-markdown/src", sources: [ "parser.c", "scanner.cc" ]),
    ]
)
