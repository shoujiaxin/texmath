//
//  BracketViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class BracketViewController: NSViewController {
    @IBOutlet var collectionView: NSCollectionView!

    var items = EquationItems()

    override func viewWillLayout() {
        collectionView.layer?.backgroundColor = NSColor.windowBackgroundColor.cgColor
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Brackets")
        items.sections[0].addItem(withName: "Parentheses", imageName: "ParenthesesButtonIcon", latexCode: "\\left( {} \\right) ")
        items.sections[0].addItem(withName: "Square Brackets", imageName: "SquareBracketsButtonIcon", latexCode: "\\left[ {} \\right] ")
        items.sections[0].addItem(withName: "Curly Braces", imageName: "CurlyBracesButtonIcon", latexCode: "\\left\\{ {} \\right\\} ")
        items.sections[0].addItem(withName: "Angle Brackets", imageName: "AngleBracketsButtonIcon", latexCode: "\\left< {} \\right> ")
        items.sections[0].addItem(withName: "Floor Brackets", imageName: "FloorBracketsButtonIcon", latexCode: "\\left\\lfloor {} \\right\\rfloor ")
        items.sections[0].addItem(withName: "Ceiling Brackets", imageName: "CeilingBracketsButtonIcon", latexCode: "\\left\\lceil {} \\right\\rceil ")
        items.sections[0].addItem(withName: "Vertical Bars", imageName: "VerticalBarsButtonIcon", latexCode: "\\left| {} \\right| ")
        items.sections[0].addItem(withName: "Double Vertical Bars", imageName: "DoubleVerticalBarsButtonIcon", latexCode: "\\left\\| {} \\right\\| ")

        items.addSection(withName: "Brackets with Separators")
        items.sections[1].addItem(withName: "Parentheses with Separator", imageName: "ParenthesesWithSeparatorButtonIcon", latexCode: "\\left( {} | {} \\right) ")
        items.sections[1].addItem(withName: "Square Brackets with Separator", imageName: "SquareBracketsWithSeparatorButtonIcon", latexCode: "\\left[ {} | {} \\right] ")
        items.sections[1].addItem(withName: "Curly Braces with Separator", imageName: "CurlyBracesWithSeparatorButtonIcon", latexCode: "\\left\\{ {} | {} \\right\\} ")
        items.sections[1].addItem(withName: "Angle Brackets with Separator", imageName: "AngleBracketsWithSeparatorButtonIcon", latexCode: "\\left< {} | {} \\right> ")
        items.sections[1].addItem(withName: "Angle Brackets with Two Separators", imageName: "AngleBracketsWithTwoSeparatorsButtonIcon", latexCode: "\\left< {} | {} | {} \\right> ")

        items.addSection(withName: "Single Bracket")
        items.sections[2].addItem(withName: "Left Parenthesis", imageName: "LeftParenthesisButtonIcon", latexCode: "\\left( {} \\right. ")
        items.sections[2].addItem(withName: "Right Parenthesis", imageName: "RightParenthesisButtonIcon", latexCode: "\\left. {} \\right) ")
        items.sections[2].addItem(withName: "Left Square Brackets", imageName: "LeftSquareBracketsButtonIcon", latexCode: "\\left[ {} \\right. ")
        items.sections[2].addItem(withName: "Right Square Brackets", imageName: "RightSquareBracketsButtonIcon", latexCode: "\\left. {} \\right] ")
        items.sections[2].addItem(withName: "Left Curly Braces", imageName: "LeftCurlyBracesButtonIcon", latexCode: "\\left\\{ {} \\right. ")
        items.sections[2].addItem(withName: "Right Curly Braces", imageName: "RightCurlyBracesButtonIcon", latexCode: "\\left. {} \\right\\} ")
        items.sections[2].addItem(withName: "Left Angle Brackets", imageName: "LeftAngleBracketsButtonIcon", latexCode: "\\left< {} \\right. ")
        items.sections[2].addItem(withName: "Right Angle Brackets", imageName: "RightAngleBracketsButtonIcon", latexCode: "\\left. {} \\right> ")
        items.sections[2].addItem(withName: "Left Floor Brackets", imageName: "LeftFloorBracketsButtonIcon", latexCode: "\\left\\lfloor {} \\right. ")
        items.sections[2].addItem(withName: "Right Floor Brackets", imageName: "RightFloorBracketsButtonIcon", latexCode: "\\left. {} \\right\\rfloor ")
        items.sections[2].addItem(withName: "Left Ceiling Brackets", imageName: "LeftCeilingBracketsButtonIcon", latexCode: "\\left\\lceil {} \\right. ")
        items.sections[2].addItem(withName: "Right Ceiling Brackets", imageName: "RightCeilingBracketsButtonIcon", latexCode: "\\left. {} \\right\\rceil ")
        items.sections[2].addItem(withName: "Left Vertical Bars", imageName: "LeftVerticalBarsButtonIcon", latexCode: "\\left| {} \\right. ")
        items.sections[2].addItem(withName: "Right Vertical Bars", imageName: "RightVerticalBarsButtonIcon", latexCode: "\\left. {} \\right| ")
        items.sections[2].addItem(withName: "Left Double Vertical Bars", imageName: "LeftDoubleVerticalBarsButtonIcon", latexCode: "\\left\\| {} \\right. ")
        items.sections[2].addItem(withName: "Right Double Vertical Bars", imageName: "RightDoubleVerticalBarsButtonIcon", latexCode: "\\left. {} \\right\\| ")
        items.sections[2].addItem(withName: "Cases", imageName: "CasesButtonIcon", latexCode: "\\begin{cases} {} \\\\ {} \\end{cases} ")
    }
}

extension BracketViewController: NSCollectionViewDataSource {
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
