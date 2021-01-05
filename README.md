# Tree Sitter Markdown

Markdown ([CommonMark Spec v0.29-gfm](https://github.github.com/gfm/)) grammar for [tree-sitter](https://github.com/tree-sitter/tree-sitter)

This is a Swift wrapper of the grammar at [https://github.com/ikatyang/tree-sitter-markdown](https://github.com/ikatyang/tree-sitter-markdown) and is designed to be used with [swift-tree-sitter].

## Installation

To include `swift-tree-sitter-markdown` in your Swift package add the following dependency to your Package.swift:

```swift
.package(url: "https://github.com/unsignedapps/swift-tree-sitter-markdown.git", from: "1.0")
```

This will include [swift-tree-sitter] as a dependency.

Don't forget to include the library in your target:

```swift
.target(name: "BestExampleApp", dependencies: [ "TreeSitter", "TreeSitterMarkdown" ])
```

## Usage

You can find the markdown grammars in `Language.markdown`:

```swift
import Foundation
import TreeSitter
import TreeSitterMarkdown

let parser = Parser()						// Create a new TreeSitter Parser
try parser.setLanguage(.markdown)			// Set the language to Markdown
let tree = try parser.parseSync("<markdown here>")
```

## License

As per the [original repo](https://github.com/ikatyang/tree-sitter-markdown), this wrapper is MIT licensed.

[swift-tree-sitter]: https://github.com/unsignedapps/swift-tree-sitter.git