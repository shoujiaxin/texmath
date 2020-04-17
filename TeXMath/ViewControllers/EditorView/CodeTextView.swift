//
//  CodeTextView.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/4/18.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Cocoa

class CodeTextView: NSTextView {
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }

    override func deleteBackward(_ sender: Any?) {
        deleteBrackets(sender)
        super.deleteBackward(sender)
    }

    override func insertNewline(_: Any?) {
        Utils.insertLatex(latexCode: "\\\\ ")
    }

    override func insertTab(_ sender: Any?) {
        // Get sub-string after current cursor position
        let cursorPosition = selectedRange().lowerBound
        let str = string[string.index(string.startIndex, offsetBy: cursorPosition)...]

        // Find the first "()", "[]" or "{}"
        var index = str.endIndex
        if let range = str.range(of: "()") {
            index = min(index, range.lowerBound)
        }
        if let range = str.range(of: "[]") {
            index = min(index, range.lowerBound)
        }
        if let range = str.range(of: "{}") {
            index = min(index, range.lowerBound)
        }

        if index == str.endIndex {
            moveToEndOfLine(sender)
        } else {
            // Move the cursor to the middle of the first "()", "[]" or "{}"
            let offset = str.distance(from: str.startIndex, to: index) + 1
            setSelectedRange(NSRange(location: cursorPosition + offset, length: 0))
        }
    }

    override func insertText(_ string: Any, replacementRange: NSRange) {
        guard let str = string as? String else {
            super.insertText(string, replacementRange: replacementRange)
            return
        }

        if str == "(" || str == "[" || str == "{" {
            super.insertText(string, replacementRange: NSRange(location: selectedRange().lowerBound, length: 0))

            switch str {
            case "(":
                super.insertText(")", replacementRange: NSRange(location: selectedRange().upperBound, length: 0))
            case "[":
                super.insertText("]", replacementRange: NSRange(location: selectedRange().upperBound, length: 0))
            case "{":
                super.insertText("}", replacementRange: NSRange(location: selectedRange().upperBound, length: 0))
            default:
                return
            }

            if selectedRange().length == 0 {
                setSelectedRange(NSRange(location: selectedRange().lowerBound - 1, length: 0))
            }
        } else if str == ")" || str == "]" || str == "}", selectedRange().length == 0 {
            let index = self.string.index(self.string.startIndex, offsetBy: selectedRange().lowerBound)

            if index != self.string.endIndex, str == String(self.string[index]) {
                setSelectedRange(NSRange(location: selectedRange().lowerBound + 1, length: 0))
            } else {
                super.insertText(string, replacementRange: replacementRange)
            }
        } else {
            super.insertText(string, replacementRange: replacementRange)
        }
    }

    private func deleteBrackets(_ sender: Any?) {
        let range = selectedRange()

        if range.length == 0, range.lowerBound > 0 {
            let index = string.index(string.startIndex, offsetBy: range.lowerBound - 1)
            if string.distance(from: index, to: string.endIndex) > 1 {
                let str = string[index ... string.index(after: index)]
                if str == "()" || str == "[]" || str == "{}" {
                    super.deleteForward(sender)
                }
            } else if string.distance(from: string.startIndex, to: index) > 0 {
                let str = string[string.index(before: index) ... index]
                if str == "()" || str == "[]" || str == "{}" {
                    setSelectedRange(NSRange(location: range.lowerBound - 1, length: 1))
                    super.deleteForward(sender)
                }
            }
        } else if range.length == 1 {
            let index = string.index(string.startIndex, offsetBy: range.lowerBound)
            let selectedChar = string[index]

            if selectedChar == "(" || selectedChar == "[" || selectedChar == "{", string.distance(from: index, to: string.endIndex) > 1 {
                let str = string[index ... string.index(after: index)]
                if str == "()" || str == "[]" || str == "{}" {
                    setSelectedRange(NSRange(location: range.lowerBound + 1, length: 1))
                    super.deleteForward(sender)
                }
            } else if selectedChar == ")" || selectedChar == "]" || selectedChar == "}", string.distance(from: string.startIndex, to: index) > 0 {
                let str = string[string.index(before: index) ... index]
                if str == "()" || str == "[]" || str == "{}" {
                    super.deleteForward(sender)
                }
            }
        }
    }
}
