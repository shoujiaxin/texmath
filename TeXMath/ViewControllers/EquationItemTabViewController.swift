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
            if let image = tabViewItem.image {
                image.tint(withColor: NSColor.textColor)
            }
        }
    }

    override func tabView(_: NSTabView, didSelect _: NSTabViewItem?) {
        if let mainWindowController = NSApp.mainWindow?.windowController as? MainWindowController {
            mainWindowController.scrubber.scrollItem(at: selectedTabViewItemIndex, to: .center)
            mainWindowController.scrubber.selectedIndex = selectedTabViewItemIndex
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
