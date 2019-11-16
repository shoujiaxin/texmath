//
//  EquationItemButton.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/16.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class EquationItemButton: NSButton {
    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        image?.size = NSSize(width: frame.width * 0.8, height: frame.height * 0.8)
        image?.tint(withColor: NSColor(named: NSColor.Name("IconColor"))!)

        layer?.borderColor = NSColor.controlAccentColor.cgColor
        layer?.borderWidth = 0
        layer?.cornerRadius = 6

        let trackingArea = NSTrackingArea(rect: bounds, options: [.mouseEnteredAndExited, .activeAlways], owner: self, userInfo: nil)
        addTrackingArea(trackingArea)
    }

    override func mouseEntered(with _: NSEvent) {
        layer?.borderWidth = 4
    }

    override func mouseExited(with _: NSEvent) {
        layer?.borderWidth = 0
    }
}
