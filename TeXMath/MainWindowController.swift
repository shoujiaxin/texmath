//
//  MainWindowController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/2.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    override func windowDidLoad() {
        super.windowDidLoad()

        let windowWidth: CGFloat = 768
        let windowHeight: CGFloat = 416
        if let screenFrame = window?.screen?.frame {
            window?.setFrame(NSRect(x: (screenFrame.width - windowWidth) / 2, y: (screenFrame.height - windowHeight) / 2, width: windowWidth, height: windowHeight), display: true)
        }
    }
}
