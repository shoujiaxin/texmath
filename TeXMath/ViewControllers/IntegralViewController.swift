//
//  IntegralViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/18.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class IntegralViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var items = EquationItems()

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Integrals")
        items.sections[0].addItem(withName: "Integral", imageName: "IntegralButtonIcon", latexCode: "\\int{} ")
        items.sections[0].addItem(withName: "Integral with Limits", imageName: "IntegralWithLimitsButtonIcon", latexCode: "\\int_{}^{}{} ")
        items.sections[0].addItem(withName: "Double Integral", imageName: "DoubleIntegralButtonIcon", latexCode: "\\iint{} ")
        items.sections[0].addItem(withName: "Double Integral with Limits", imageName: "DoubleIntegralWithLimitsButtonIcon", latexCode: "\\iint_{}^{}{} ")
        items.sections[0].addItem(withName: "Triple Integral", imageName: "TripleIntegralButtonIcon", latexCode: "\\iiint{} ")
        items.sections[0].addItem(withName: "Triple Integral with Limits", imageName: "TripleIntegralWithLimitsButtonIcon", latexCode: "\\iiint_{}^{}{} ")

        items.addSection(withName: "Contour Integrals")
        items.sections[1].addItem(withName: "Contour Integral", imageName: "ContourIntegralButtonIcon", latexCode: "\\oint{} ")
        items.sections[1].addItem(withName: "Contour Integral with Limits", imageName: "ContourIntegralWithLimitsButtonIcon", latexCode: "\\oint_{}^{}{} ")
    }
}

extension IntegralViewController: NSCollectionViewDataSource {
    func numberOfSections(in _: NSCollectionView) -> Int {
        return items.numberOfSections
    }

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

    func collectionView(_ collectionView: NSCollectionView, viewForSupplementaryElementOfKind _: NSCollectionView.SupplementaryElementKind, at indexPath: IndexPath) -> NSView {
        let view = collectionView.makeSupplementaryView(ofKind: NSCollectionView.elementKindSectionHeader, withIdentifier: NSUserInterfaceItemIdentifier(rawValue: "SectionHeaderView"), for: indexPath) as! SectionHeaderView

        view.sectionTitle.stringValue = items.sections[indexPath.section].name!

        return view
    }
}
