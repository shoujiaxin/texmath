//
//  PreviewViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa
import iosMath

var latexPreviewLabel: MTMathUILabel!
var editorTextView: NSTextView!

class PreviewViewController: NSViewController {
    @IBOutlet var previewView: NSView!
    @IBOutlet var latexTextView: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        previewView.autoresizingMask = [.width, .height]
        previewView.autoresizesSubviews = true

        latexPreviewLabel = MTMathUILabel()
        latexPreviewLabel.fontSize = 16
        latexPreviewLabel.textAlignment = MTTextAlignment.center
        latexPreviewLabel.textColor = NSColor.textColor
        previewView.addSubview(latexPreviewLabel!)

        latexTextView.delegate = self
        latexTextView.font = NSFont(name: "Menlo", size: 14)

        editorTextView = latexTextView
    }

    @IBAction func clearButtonClicked(_: NSButton) {
        latexPreviewLabel.latex = ""
        latexTextView.selectAll(nil)
        latexTextView.insertText("", replacementRange: latexTextView.selectedRange())
    }

    @IBAction func copyButtonClicked(_: NSButton) {
        let latexText = latexTextView.string

        if !latexText.isEmpty {
            let pasteboard = NSPasteboard.general
            pasteboard.clearContents()
            pasteboard.setString(latexText, forType: NSPasteboard.PasteboardType.string)
        }
    }
}

extension PreviewViewController: NSTextViewDelegate {
    func textDidChange(_: Notification) {
        latexPreviewLabel.latex = latexTextView.string
    }

    func textView(_: NSTextView, doCommandBy commandSelector: Selector) -> Bool {
        if commandSelector == #selector(insertNewline(_:)) {
            // Insert "\\ " at current cursor position
            latexTextView.insertText("\\\\ ", replacementRange: latexTextView.selectedRange())

            // Update preview label
            latexPreviewLabel.latex = latexTextView.string

            // Return true to ignore system default behavior
            return true
        } else if commandSelector == #selector(insertTab(_:)) {
            // Get sub string from current cursor position to the end
            let cursorPosition = latexTextView.selectedRange.location
            let subStr = latexTextView.string[latexTextView.string.index(latexTextView.string.startIndex, offsetBy: cursorPosition)...]

            // Find the firet "{}" in the sub string
            if let firstIndex = subStr.range(of: "{}") {
                let offset = subStr.distance(from: subStr.startIndex, to: firstIndex.lowerBound) + 1
                latexTextView.setSelectedRange(NSRange(location: cursorPosition + offset, length: 0))
            } else {
                latexTextView.moveToEndOfDocument(nil)
            }

            return true
        }

        return false
    }
}
