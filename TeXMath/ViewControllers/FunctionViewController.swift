//
//  FunctionViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/20.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FunctionViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var items = EquationItems()

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Trigonometric Functions")
        items.sections[0].addItem(withName: "Sine Function", imageName: "SineFunctionButtonIcon", latexCode: "\\sin{} ")
        items.sections[0].addItem(withName: "Cosine Function", imageName: "CosineFunctionButtonIcon", latexCode: "\\cos{} ")
        items.sections[0].addItem(withName: "Tangent Function", imageName: "TangentFunctionButtonIcon", latexCode: "\\tan{} ")
        items.sections[0].addItem(withName: "Cotangent Function", imageName: "CotangentFunctionButtonIcon", latexCode: "\\cot{} ")
        items.sections[0].addItem(withName: "Secant Function", imageName: "SecantFunctionButtonIcon", latexCode: "\\sec{} ")
        items.sections[0].addItem(withName: "Cosecant Function", imageName: "CosecantFunctionButtonIcon", latexCode: "\\csc{} ")

        items.addSection(withName: "Inverse Trigonometric Functions")
        items.sections[1].addItem(withName: "Inverse Sine Function", imageName: "InverseSineFunctionButtonIcon", latexCode: "\\sin^{-1}{} ")
        items.sections[1].addItem(withName: "Inverse Cosine Function", imageName: "InverseCosineFunctionButtonIcon", latexCode: "\\cos^{-1}{} ")
        items.sections[1].addItem(withName: "Inverse Tangent Function", imageName: "InverseTangentFunctionButtonIcon", latexCode: "\\tan^{-1}{} ")
        items.sections[1].addItem(withName: "Inverse Cotangent Function", imageName: "InverseCotangentFunctionButtonIcon", latexCode: "\\cot^{-1}{} ")
        items.sections[1].addItem(withName: "Inverse Secant Function", imageName: "InverseSecantFunctionButtonIcon", latexCode: "\\sec^{-1}{} ")
        items.sections[1].addItem(withName: "Inverse Cosecant Function", imageName: "InverseCosecantFunctionButtonIcon", latexCode: "\\csc^{-1}{} ")
        items.sections[1].addItem(withName: "Arcsine Function", imageName: "ArcsineFunctionButtonIcon", latexCode: "\\arcsin{} ")
        items.sections[1].addItem(withName: "Arccosine Function", imageName: "ArccosineFunctionButtonIcon", latexCode: "\\arccos{} ")
        items.sections[1].addItem(withName: "Arctangent Function", imageName: "ArctangentFunctionButtonIcon", latexCode: "\\arctan{} ")

        items.addSection(withName: "Hyperbolic Trigonometric Functions")
        items.sections[2].addItem(withName: "Hyperbolic Sine Function", imageName: "HyperbolicSineFunctionButtonIcon", latexCode: "\\sinh{} ")
        items.sections[2].addItem(withName: "Hyperbolic Cosine Function", imageName: "HyperbolicCosineFunctionButtonIcon", latexCode: "\\cosh{} ")
        items.sections[2].addItem(withName: "Hyperbolic Tangent Function", imageName: "HyperbolicTangentFunctionButtonIcon", latexCode: "\\tanh{} ")
        items.sections[2].addItem(withName: "Hyperbolic Cotangent Function", imageName: "HyperbolicCotangentFunctionButtonIcon", latexCode: "\\coth{} ")
    }
}

extension FunctionViewController: NSCollectionViewDataSource {
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
