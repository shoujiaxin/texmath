//
//  Utils.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class Utils {
    class func insertLatexCode(latexCode code: String) {
        // Insert to current cursor position
        let cursorPosition = editorTextView.selectedRange.location
        editorTextView.insertText(code, replacementRange: editorTextView.selectedRange())

        // Update preview label
        latexPreviewLabel.latex = editorTextView.string

        // Move cursor to middle of first "{}" or "  "
        if let firstIndex = (code.range(of: "{}") != nil) ? code.range(of: "{}") : code.range(of: "  ") {
            let offset = code.distance(from: code.startIndex, to: firstIndex.lowerBound) + 1
            editorTextView.setSelectedRange(NSRange(location: cursorPosition + offset, length: 0))
        }
    }
}
