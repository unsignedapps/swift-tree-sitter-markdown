//
//  Language.swift
//
//  Created by Rob Amos on 15/5/20.
//

import Foundation
import TreeSitter

extension Language {
    public enum MarkdownNode {
        
        // MARK: - Document

        public static let document = "document"
        
        
        // MARK: - Headings
        
        public static let heading = "atx_heading"
        public static let headingMarker = "atx_heading_marker"
        public static let headingContent = "heading_content"
        
        public static let underlinedHeading = "setext_heading"
        public static let underlinedHeadingUnderline = "setext_heading_underline"

        
        // MARK: - Paragraphs
        
        public static let paragraph = "paragraph"
        public static let blockQuote = "block_quote"
        public static let text = "text"
        public static let backslashEscape = "backslash_escape"
        public static let characterReference = "character_reference"

        
        // MARK: - Breaks
        
        public static let thematicBreak = "thematic_break"
        public static let lineBreak = "line_break"
        public static let lineBreakHard = "hard_line_break"
        public static let lineBreakSoft = "soft_line_break"
        
        // MARK: - Code
        
        public static let codeBlockIndented = "indented_code_block"
        public static let codeBlockFenced = "fenced_code_block"
        public static let codeBlockContent = "code_fence_content"
        public static let codeSpan = "code_span"
        
        
        // MARK: - HTML Blocks

        public static let htmlBlock = "html_block"
        public static let htmlTagOpen = "html_open_tag"
        public static let htmlTagClose = "html_close_tag"
        public static let htmlTagSelfClosing = "html_self_closing_tag"
        public static let htmlComment = "html_comment"
        public static let htmlProcessingInstruction = "html_processing_instruction"
        public static let htmlDeclaration = "html_declaration"
        public static let htmlCData = "html_cdata_section"
        public static let htmlAttribute = "html_attribute"
        public static let htmlAttributeValue = "html_attribute_value"

        
        // MARK: - Links
        
        public static let linkReferenceDefinition = "link_reference_definition"
        public static let linkDestination = "link_destination"
        public static let linkTitle = "link_title"
        public static let link = "link"
        public static let linkAutoWWW = "www_autolink"
        public static let linkAutoURI = "uri_autolink"
        public static let linkAutoEmail = "email_autolink"
        
        
        // MARK: - Lists
        
        public static let listTight = "tight_list"
        public static let listLoose = "loose_list"
        public static let listItem = "list_item"
        public static let listMarker = "list_marker"

        public static let taskListItem = "task_list_item"
        public static let taskListItemMarker = "task_list_item_marker"
        
        
        // MARK: - Tables
        
        public static let table = "table"
        public static let tableHeader = "table_header_row"
        public static let tableDelimiter = "table_delimiter_row"
        public static let tableData = "table_data_row"
        public static let tableCell = "table_cell"
        public static let tableColumnAlignment = "table_column_alignment"

        
        // MARK: - Styles
        
        public static let emphasis = "emphasis"
        public static let strong = "strong_emphasis"
        public static let strikethrough = "strikethrough"
        public static let image = "image"
    }
}
