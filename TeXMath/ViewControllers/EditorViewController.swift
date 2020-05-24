//
//  EditorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/14.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa
import WebKit

class EditorViewController: NSViewController {
    @IBOutlet var previewView: PreviewView!
    @IBOutlet var codeTextView: CodeTextView!

    override func viewWillAppear() {
        super.viewWillAppear()

        view.window?.initialFirstResponder = codeTextView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        previewView.setValue(false, forKey: "drawsBackground")

        codeTextView.delegate = self
        codeTextView.font = NSFont(name: "Menlo", size: 14)
    }

    @IBAction func clearButtonClicked(_ sender: Any) {
        codeTextView.selectAll(sender)
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
}

extension EditorViewController: NSTextViewDelegate {
    func textDidChange(_: Notification) {
        previewView.show(latex: codeTextView.string)
    }
}
