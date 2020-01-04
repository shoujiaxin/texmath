//
//  FlippedView.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/3.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FlippedView: NSView {
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)
    }

    override var isFlipped: Bool {
        return true
    }
}
