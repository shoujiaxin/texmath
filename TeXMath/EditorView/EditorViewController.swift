//
//  EditorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/14.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class EditorViewController: NSViewController, NSTextViewDelegate {
    @IBOutlet var previewView: PreviewView!
    @IBOutlet var codeTextView: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        codeTextView.delegate = self
        codeTextView.font = NSFont(name: "Menlo", size: 14)
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
}
