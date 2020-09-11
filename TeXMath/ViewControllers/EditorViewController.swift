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
    @IBOutlet var previewView: WKWebView!
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
        let htmlStr = """
        <!DOCTYPE html>
        <html>

        <head>
            <script>
                MathJax = {
                    options: {
                        enableMenu: false
                    }
                };
            </script>
            <script type="text/javascript" id="MathJax-script" async
                src="Contents/Resources/MathJax/es5/tex-svg.js">
                </script>

            <style>
                :root {
                    color-scheme: light dark;
                }

                body,
                html {
                    height: 100%;
                    margin: 0%;
                }

                .container {
                    align-items: center;
                    display: flex;
                    height: 100%;
                    justify-content: center;
                }

                .equation {
                    font-size: 18pt;
                }
            </style>
        </head>

        <body>
            <div class="container">
                <div class="equation">
                    \\begin{equation}
                    \(codeTextView.string)
                    \\end{equation}
                </div>
            </div>
        </body>

        </html>
        """

        previewView.loadHTMLString(htmlStr, baseURL: Bundle.main.bundleURL)
    }
}
