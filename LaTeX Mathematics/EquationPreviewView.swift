//
//  EquationPreviewView.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class EquationPreviewView: NSView {
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }

    override func viewWillDraw() {
        // Set the size of MTMathUILabel
        subviews[0].frame = NSRect(x: 0, y: 0, width: frame.width, height: frame.height)
    }
}
