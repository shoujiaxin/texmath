//
//  SectionHeaderView.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/1/4.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Cocoa

class SectionHeaderView: NSView {
    @IBOutlet var sectionTitle: NSTextField!

    override func draw(_ dirtyRect: NSRect) {
        super.draw(dirtyRect)

        layer?.backgroundColor = NSColor.quaternaryLabelColor.cgColor
    }
}
