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
    private let equationLabel = MTMathUILabel()

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }

    override func viewWillDraw() {
        autoresizesSubviews = true
        autoresizingMask = [NSView.AutoresizingMask.width, NSView.AutoresizingMask.height]

        equationLabel.fontSize = 20
        equationLabel.frame = NSRect(x: 0, y: 0, width: frame.width, height: frame.height)
        equationLabel.textAlignment = MTTextAlignment.center
        equationLabel.textColor = NSColor.textColor

        addSubview(equationLabel)
    }

    func show(latex: String) {
        equationLabel.latex = latex
    }
}
