# Changelog

All notable changes to this project will be documented in this file. See [standard-version](https://github.com/conventional-changelog/standard-version) for commit guidelines.

# [0.3.0](https://github.com/ikatyang/tree-sitter-markdown/compare/v0.2.0...v0.3.0) (2019-10-14)


### Bug Fixes

* `table` (with same indentation `table_header_row`/`table_delimiter_row`) in `list_item` is now recognized ([ec8e9fd](https://github.com/ikatyang/tree-sitter-markdown/commit/ec8e9fd))
* trailing `line_break`s are part of `code_fence_content` ([#2](https://github.com/ikatyang/tree-sitter-markdown/issues/2)) ([39daf72](https://github.com/ikatyang/tree-sitter-markdown/commit/39daf72))


### Features

* add `text` nodes ([#3](https://github.com/ikatyang/tree-sitter-markdown/issues/3)) ([8404102](https://github.com/ikatyang/tree-sitter-markdown/commit/8404102))
* add `virtual_space` nodes ([#1](https://github.com/ikatyang/tree-sitter-markdown/issues/1)) ([4742ce0](https://github.com/ikatyang/tree-sitter-markdown/commit/4742ce0), [850a9ec](https://github.com/ikatyang/tree-sitter-markdown/commit/850a9ec))



# [0.2.0](https://github.com/ikatyang/tree-sitter-markdown/compare/v0.1.1...v0.2.0) (2019-10-01)


### Performance Improvements

* reduce the number of lookahead chars for parsing `task_list_item`s ([37e92ff](https://github.com/ikatyang/tree-sitter-markdown/commit/37e92ff))


### BREAKING CHANGES

* `checkbox`s are renamed with `task_list_item_marker`
* `task_list_item_marker`s are now part of the first `paragraph` in `task_list_item`s



## [0.1.1](https://github.com/ikatyang/tree-sitter-markdown/compare/v0.1.0...v0.1.1) (2019-10-01)


### Performance Improvements

* remove unnecessary buffering for block-level scanning ([b92a780](https://github.com/ikatyang/tree-sitter-markdown/commit/b92a780))



## 0.1.0 (2019-09-30)


### Features

* initial implementation ([a794f46](https://github.com/ikatyang/tree-sitter-markdown/commit/a794f46))
