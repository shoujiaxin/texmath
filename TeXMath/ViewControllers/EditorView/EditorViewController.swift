//
//  EditorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/14.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa
import WebKit

class EditorViewController: NSViewController, NSTextViewDelegate {
    @IBOutlet var previewView: PreviewView!
    @IBOutlet var codeTextView: NSTextView!

    override func viewWillAppear() {
        super.viewWillAppear()

        view.window?.initialFirstResponder = codeTextView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        previewView.setValue(false, forKey: "drawsBackground")

        codeTextView.delegate = self
        codeTextView.font = NSFont(name: "Menlo", size: 14)

        Utils.codeTextView = codeTextView
    }

    @IBAction func clearButtonClicked(_: Any) {
        codeTextView.selectAll(nil)
        codeTextView.insertText("", replacementRange: codeTextView.selectedRange())
    }

    @IBAction func copyButtonClicked(_: Any) {
        let latexCode = codeTextView.string

        if !latexCode.isEmpty {
            let pasteboard = NSPasteboard.general
            pasteboard.clearContents()
            pasteboard.setString(latexCode, forType: NSPasteboard.PasteboardType.string)
        }
    }

    func textDidChange(_: Notification) {
        previewView.show(latex: codeTextView.string)
    }

    func textView(_: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
        switch commandSelector {
        case #selector(insertNewline(_:)):
            Utils.insertLatex(latexCode: "\\\\")
            return true
        case #selector(insertTab(_:)):
            // Get sub-string after current cursor position
            let cursorPosition = codeTextView.selectedRange().location
            let str = codeTextView.string[codeTextView.string.index(codeTextView.string.startIndex, offsetBy: cursorPosition)...]

            if let firstIndex = str.range(of: "{}") {
                // Move cursor to the middle of the first "{}"
                let offset = str.distance(from: str.startIndex, to: firstIndex.lowerBound) + 1
                codeTextView.setSelectedRange(NSRange(location: cursorPosition + offset, length: 0))
            } else {
                // Move to the end
                codeTextView.moveToEndOfLine(nil)
            }
            return true
        default:
            return false
        }
    }
}
