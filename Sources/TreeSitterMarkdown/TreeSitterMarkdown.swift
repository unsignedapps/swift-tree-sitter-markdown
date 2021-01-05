//
//  TreeSitterMarkdown.swift
//
//  Created by Rob Amos on 13/4/20.
//

import TreeSitter
import tree_sitter_markdown

extension Language {
    public static var markdown: Language {
        return Language(rawValue: tree_sitter_markdown())
    }
}
