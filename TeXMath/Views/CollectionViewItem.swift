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

    var item: EquationItem? {
        didSet {
            guard isViewLoaded else {
                return
            }

            if let item = item {
                button.toolTip = item.name!
                button.image = NSImage(named: NSImage.Name(item.imageName!))

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
        editorViewController?.codeTextView.insertLatex(item!.latexCode!)
    }
}
