//
//  EquationItemTabViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/16.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class EquationItemTabViewController: NSTabViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func updateViewConstraints() {
        super.updateViewConstraints()

        for tabViewItem in tabViewItems {
            tabViewItem.image?.tint(withColor: NSColor(named: NSColor.Name("IconColor"))!)
        }
    }
}

extension NSImage {
    func tint(withColor color: NSColor) {
        lockFocus()

        color.set()

        let imageRect = NSRect(origin: NSZeroPoint, size: size)
        imageRect.fill(using: NSCompositingOperation.sourceAtop)

        unlockFocus()
    }
}
