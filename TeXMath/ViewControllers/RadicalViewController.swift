//
//  RadicalViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class RadicalViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var items = EquationItems()

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "")
        items.sections[0].addItem(withName: "Square Root", imageName: "SquareRootButtonIcon", latexCode: "\\sqrt{} ")
        items.sections[0].addItem(withName: "Radical with Degree", imageName: "RadicalWithDegreeButtonIcon", latexCode: "\\sqrt[]{} ")
        items.sections[0].addItem(withName: "Square Root with Degree", imageName: "SquareRootWithDegreeButtonIcon", latexCode: "\\sqrt[2]{} ")
        items.sections[0].addItem(withName: "Cubic Root", imageName: "CubicRootButtonIcon", latexCode: "\\sqrt[3]{} ")
    }
}

extension RadicalViewController: NSCollectionViewDataSource {
    func collectionView(_: NSCollectionView, numberOfItemsInSection _: Int) -> Int {
        return items.numberOfItems(inSection: 0)
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: .init("CollectionViewItem"), for: indexPath)
        guard let collectionViewItem = item as? CollectionViewItem else {
            return item
        }

        collectionViewItem.itemInfo = items.item(inSection: indexPath.section, atIndex: indexPath.item)

        return collectionViewItem
    }
}
