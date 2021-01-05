//
//  Node.swift
//  tree-sitter-markdown
//
//  Created by Rob Amos on 15/5/20.
//

import Foundation
import TreeSitter

public extension Node {
    
    /// If the node is a Header, return the header depth (1-6).
    ///
    /// Retuns 0 if not a node
    ///
    var headerDepth: Int {
        guard self.name == Language.MarkdownNode.headingMarker else { return 0 }
        return max(0, Int(self.endByte - self.startByte))
    }

    /// If the node is a Header, return the header depth (1-6).
    ///
    /// Retuns 0 if not a node
    ///
    func underlinedHeaderDepth (source: String) -> Int {
        guard self.name == Language.MarkdownNode.underlinedHeadingUnderline else { return 0 }
        let index = source.utf8.index(source.utf8.startIndex, offsetBy: Int(self.startByte)).samePosition(in: source)!
        return source[index] == "=" ? 1 : 2
    }

    /// If the node is a task list item marker, return if it is checked.
    ///
    /// We need access to the source document for this.
    ///
    func isTaskChecked (source: String) -> Bool {
        guard self.name == Language.MarkdownNode.taskListItemMarker else { return false }
        return self.content(source: source) == "[x]"
    }
    
    /// The content of the node
    ///
    func content (source: String) -> String {
        let start = Int(self.startByte)
        let end = Int(self.endByte)

        let data = Data(source.utf8)
        guard end < data.endIndex else { return "" }
        return String(data: data[start ..< end], encoding: .utf8) ?? ""
    }
}
