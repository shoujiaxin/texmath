//
//  PreviewViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa
import iosMath

class PreviewViewController: NSViewController {
    @IBOutlet var previewView: NSView!
    @IBOutlet var latexTextView: NSTextView!

    let latexPreviewLabel = MTMathUILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        previewView.autoresizingMask = [.width, .height]
        previewView.autoresizesSubviews = true
        previewView.addSubview(latexPreviewLabel)

        latexPreviewLabel.fontSize = 16
        latexPreviewLabel.textAlignment = MTTextAlignment.center
        latexPreviewLabel.textColor = NSColor.textColor

        latexTextView.delegate = self
        latexTextView.font = NSFont(name: "Menlo", size: 14)
    }

    @IBAction func clearButtonClicked(_: NSButton) {
        latexPreviewLabel.latex = ""
        latexTextView.string = ""
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
            let cursorPosition = latexTextView.selectedRange.location
            latexTextView.string.insert(contentsOf: "\\\\ ", at: latexTextView.string.index(latexTextView.string.startIndex, offsetBy: cursorPosition))
            latexPreviewLabel.latex = latexTextView.string
            latexTextView.setSelectedRange(NSRange(location: cursorPosition + 3, length: 0))
            return true // Return true to ignore system default behavior
        }

        return false
    }
}
