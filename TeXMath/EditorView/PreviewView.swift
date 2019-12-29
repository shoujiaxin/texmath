//
//  PreviewView.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/23.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa
import WebKit

class PreviewView: WKWebView {
    var latexStr: String?

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }

    override func layout() {
        super.layout()

        if let latexStr = latexStr {
            show(latex: latexStr)
        }
    }

    func show(latex: String) {
        let htmlStr = "<!DOCTYPE html><head><meta charset=\"utf-8\"><script>MathJax = {tex: { inlineMath: [['$', '$'], ['\\\\(', '\\\\)']] }, options: { renderActions: { addMenu: [0] } }};</script><script async src=\"Contents/Resources/MathJax-3.0.0/es5/tex-svg.js\"></script></head><body><div style=\"background-color:transparent; font-size: 18pt; color: \(NSColor.textColor.hexValue); text-align:center;\">$$\\begin{equation}\(latex)\\end{equation}$$</div></body>"

        loadHTMLString(htmlStr, baseURL: Bundle.main.bundleURL)

        latexStr = latex
    }
}

private extension NSColor {
    var hexValue: String {
        guard let rgbColor = usingColorSpace(NSColorSpace.sRGB) else {
            return "#FFFFFF"
        }

        let red = Int(round(rgbColor.redComponent * 0xFF))
        let green = Int(round(rgbColor.greenComponent * 0xFF))
        let blue = Int(round(rgbColor.blueComponent * 0xFF))

        return NSString(format: "#%02X%02X%02X", red, green, blue) as String
    }
}
