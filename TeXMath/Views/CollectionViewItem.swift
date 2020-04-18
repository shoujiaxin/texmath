//
//  CollectionViewItem.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/1/4.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Cocoa

class CollectionViewItem: NSCollectionViewItem {
    @IBOutlet var button: EquationItemButton!

    var itemInfo: (name: String, imageName: String, latexCode: String)? {
        didSet {
            guard isViewLoaded else {
                return
            }

            if let itemInfo = itemInfo {
                button.toolTip = itemInfo.name
                button.image = NSImage(named: NSImage.Name(itemInfo.imageName))

                button.target = self
                button.action = #selector(buttonClicked)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func buttonClicked() {
        let mainWindowController = NSApp.mainWindow?.windowController
        let editorViewController = mainWindowController?.contentViewController?.children[1] as? EditorViewController
        editorViewController?.codeTextView.insertLatex(itemInfo!.latexCode)
    }
}
