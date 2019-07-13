//
//  EquationItemButton.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/6.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class EquationItemButton: NSButton {
    override func viewWillDraw() {
        imageScaling = NSImageScaling.scaleNone
        image?.size = NSSize(width: frame.width * 0.7, height: frame.height * 0.7)

        layer?.cornerRadius = 6
        layer?.borderWidth = 0 // Hide border by default
        layer?.borderColor = NSColor.controlAccentColor.cgColor

        // Add tracking area to show border when mouse hover
        let trackingArea = NSTrackingArea(rect: bounds, options: [NSTrackingArea.Options.mouseEnteredAndExited, NSTrackingArea.Options.activeAlways], owner: self, userInfo: nil)
        addTrackingArea(trackingArea)
    }

    override func mouseEntered(with _: NSEvent) {
        layer?.borderWidth = 3
    }

    override func mouseExited(with _: NSEvent) {
        layer?.borderWidth = 0
    }
}
