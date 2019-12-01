//
//  Utils.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class Utils {
    static var codeTextView: NSTextView?

    static func insertLatex(latexCode: String) {
        if let codeTextView = Utils.codeTextView {
            var cursorPosition = codeTextView.selectedRange().location
            let strIndex = codeTextView.string.index(codeTextView.string.startIndex, offsetBy: cursorPosition)

            // Insert a spcae before the code
            if cursorPosition != 0, strIndex != codeTextView.string.endIndex, codeTextView.string[codeTextView.string.index(before: strIndex)] != " " {
                codeTextView.insertText(" ", replacementRange: codeTextView.selectedRange())
                cursorPosition += 1
            }
            // Insert code to current cursor position
            codeTextView.insertText(latexCode, replacementRange: codeTextView.selectedRange())

            // Move cursor to the middle of the first "{}"
            if let firstIndex = latexCode.range(of: "{}") {
                let offset = latexCode.distance(from: latexCode.startIndex, to: firstIndex.lowerBound) + 1
                codeTextView.setSelectedRange(NSRange(location: cursorPosition + offset, length: 0))
            }
        }
    }
}
