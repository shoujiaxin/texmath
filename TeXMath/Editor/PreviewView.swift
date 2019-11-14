//
//  PreviewView.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/14.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa
import iosMath

class PreviewView: NSView {
    private let formulaLabel = MTMathUILabel()

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }

    override func viewWillDraw() {
        autoresizesSubviews = true
        autoresizingMask = [NSView.AutoresizingMask.width, NSView.AutoresizingMask.height]

        formulaLabel.fontSize = 16
        formulaLabel.frame = NSRect(x: 0, y: 0, width: frame.width, height: frame.height)
        formulaLabel.textAlignment = MTTextAlignment.center
        formulaLabel.textColor = NSColor.textColor

        addSubview(formulaLabel)
    }

    func show(latex: String) {
        formulaLabel.latex = latex
    }
}
