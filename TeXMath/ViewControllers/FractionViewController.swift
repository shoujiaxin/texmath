//
//  FractionViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FractionViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var equationItemList: [EquationItemInfo] = []

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        equationItemList.append(EquationItemInfo(withName: "Stacked Fraction", imageName: "StackedFractionButtonIcon", latexCode: "\\frac{}{} "))
        equationItemList.append(EquationItemInfo(withName: "Linear Fraction", imageName: "LinearFractionButtonIcon", latexCode: "{}/{} "))
    }
}

extension FractionViewController: NSCollectionViewDataSource {
    func collectionView(_: NSCollectionView, numberOfItemsInSection _: Int) -> Int {
        return equationItemList.count
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: .init("CollectionViewItem"), for: indexPath)
        guard let collectionViewItem = item as? CollectionViewItem else {
            return item
        }

        collectionViewItem.itemInfo = equationItemList[indexPath.item]

        return collectionViewItem
    }
}
