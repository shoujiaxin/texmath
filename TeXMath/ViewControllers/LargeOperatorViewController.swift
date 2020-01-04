//
//  LargeOperatorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/19.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LargeOperatorViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var items = EquationItems()

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Large Operators")
        items.sections[0].addItem(withName: "Summation", imageName: "SummationButtonIcon", latexCode: "\\sum{} ")
        items.sections[0].addItem(withName: "Summation with Limits", imageName: "SummationWithLimitsButtonIcon", latexCode: "\\sum_{}^{}{} ")
        items.sections[0].addItem(withName: "Product", imageName: "ProductButtonIcon", latexCode: "\\prod{} ")
        items.sections[0].addItem(withName: "Product with Limits", imageName: "ProductWithLimitsButtonIcon", latexCode: "\\prod_{}^{}{} ")
        items.sections[0].addItem(withName: "CoProduct", imageName: "CoProductButtonIcon", latexCode: "\\coprod{} ")
        items.sections[0].addItem(withName: "CoProduct with Limits", imageName: "CoProductWithLimitsButtonIcon", latexCode: "\\coprod_{}^{}{} ")
        items.sections[0].addItem(withName: "Union", imageName: "UnionButtonIcon", latexCode: "\\bigcup{} ")
        items.sections[0].addItem(withName: "Union with Limits", imageName: "UnionWithLimitsButtonIcon", latexCode: "\\bigcup_{}^{}{} ")
        items.sections[0].addItem(withName: "Intersection", imageName: "IntersectionButtonIcon", latexCode: "\\bigcap{} ")
        items.sections[0].addItem(withName: "Intersection with Limits", imageName: "IntersectionWithLimitsButtonIcon", latexCode: "\\bigcap_{}^{}{} ")
        items.sections[0].addItem(withName: "Logical Or", imageName: "LogicalOrButtonIcon", latexCode: "\\bigvee{} ")
        items.sections[0].addItem(withName: "Logical Or with Limits", imageName: "LogicalOrWithLimitsButtonIcon", latexCode: "\\bigvee_{}^{}{} ")
        items.sections[0].addItem(withName: "Logical And", imageName: "LogicalAndButtonIcon", latexCode: "\\bigwedge{} ")
        items.sections[0].addItem(withName: "Logical And with Limits", imageName: "LogicalAndWithLimitsButtonIcon", latexCode: "\\bigwedge_{}^{}{} ")
    }
}

extension LargeOperatorViewController: NSCollectionViewDataSource {
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
