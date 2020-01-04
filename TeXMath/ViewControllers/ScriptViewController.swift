//
//  ScriptViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class ScriptViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var items = EquationItems()

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "")
        items.sections[0].addItem(withName: "Superscript", imageName: "SuperscriptButtonIcon", latexCode: "{}^{} ")
        items.sections[0].addItem(withName: "Subscript", imageName: "SubscriptButtonIcon", latexCode: "{}_{} ")
        items.sections[0].addItem(withName: "Subscript-Superscript", imageName: "SubscriptSuperscriptButtonIcon", latexCode: "{}_{}^{} ")
        items.sections[0].addItem(withName: "Left Subscript-Superscript", imageName: "LeftSubscriptSuperscriptButtonIcon", latexCode: "_{}^{}{} ")
    }
}

extension ScriptViewController: NSCollectionViewDataSource {
    func collectionView(_: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.numberOfItems(in: section)
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: .init("CollectionViewItem"), for: indexPath)
        guard let collectionViewItem = item as? CollectionViewItem else {
            return item
        }

        collectionViewItem.itemInfo = items.item(in: indexPath.section, at: indexPath.item)

        return collectionViewItem
    }
}
