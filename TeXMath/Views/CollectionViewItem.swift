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

                button.image = NSImage(imageLiteralResourceName: itemInfo.imageName)

                button.target = self
                button.action = #selector(buttonClicked)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @objc func buttonClicked() {
        Utils.insertLatex(latexCode: itemInfo!.latexCode)
    }
}
