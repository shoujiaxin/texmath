//
//  ViewControllerBase.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/1/5.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Cocoa

class ViewControllerBase: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var sections: [EquationItemSection] = []

    override func viewWillLayout() {
        super.viewWillLayout()

        collectionView.backgroundColors = [.clear]
    }

    func addSection(withName name: String) {
        let section = EquationItemSection()
        section.name = name

        sections.append(section)
    }
}

extension ViewControllerBase: NSCollectionViewDataSource {
    func numberOfSections(in _: NSCollectionView) -> Int {
        return sections.count
    }

    func collectionView(_: NSCollectionView, numberOfItemsInSection section: Int) -> Int {
        return sections[section].items.count
    }

    func collectionView(_ collectionView: NSCollectionView, itemForRepresentedObjectAt indexPath: IndexPath) -> NSCollectionViewItem {
        let item = collectionView.makeItem(withIdentifier: .init("CollectionViewItem"), for: indexPath)
        guard let collectionViewItem = item as? CollectionViewItem else {
            return item
        }

        collectionViewItem.item = sections[indexPath.section].items[indexPath.item]

        return collectionViewItem
    }

    func collectionView(_ collectionView: NSCollectionView, viewForSupplementaryElementOfKind _: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSView {
        let view = collectionView.makeSupplementaryView(ofKind: NSCollectionView.elementKindSectionHeader, withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "SectionHeaderView"), for: indexPath) as! SectionHeaderView

        view.sectionTitle.stringValue = sections[indexPath.section].name!

        return view
    }
}
