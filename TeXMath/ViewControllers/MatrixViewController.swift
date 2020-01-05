//
//  MatrixViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/28.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class MatrixViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Empty Matrices")
        items.sections[0].addItem(withName: "1x2 Empty Matrix", imageName: "1x2EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} & {} \\end{matrix} ")
        items.sections[0].addItem(withName: "2x1 Empty Matrix", imageName: "2x1EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} \\\\ {} \\end{matrix} ")
        items.sections[0].addItem(withName: "1x3 Empty Matrix", imageName: "1x3EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} & {} & {} \\end{matrix} ")
        items.sections[0].addItem(withName: "3x1 Empty Matrix", imageName: "3x1EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} \\\\ {} \\\\ {} \\end{matrix} ")
        items.sections[0].addItem(withName: "2x2 Empty Matrix", imageName: "2x2EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} & {} \\\\ {} & {} \\end{matrix} ")
        items.sections[0].addItem(withName: "2x3 Empty Matrix", imageName: "2x3EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} & {} & {} \\\\ {} & {} & {} \\end{matrix} ")
        items.sections[0].addItem(withName: "3x2 Empty Matrix", imageName: "3x2EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} & {} \\\\ {} & {} \\\\ {} & {} \\end{matrix} ")
        items.sections[0].addItem(withName: "3x3 Empty Matrix", imageName: "3x3EmptyMatrixButtonIcon", latexCode: "\\begin{matrix} {} & {} & {} \\\\ {} & {} & {} \\\\ {} & {} & {} \\end{matrix} ")

        items.addSection(withName: "Matrices with Brackets")
        items.sections[1].addItem(withName: "Empty 2x2 Matrix in Parentheses", imageName: "Empty2x2MatrixInParenthesesButtonIcon", latexCode: "\\begin{pmatrix} {} & {} \\\\ {} & {} \\end{pmatrix} ")
        items.sections[1].addItem(withName: "Empty 2x2 Matrix in Brackets", imageName: "Empty2x2MatrixInBracketsButtonIcon", latexCode: "\\begin{bmatrix} {} & {} \\\\ {} & {} \\end{bmatrix} ")
        items.sections[1].addItem(withName: "Empty 2x2 Matrix in Braces", imageName: "Empty2x2MatrixInBracesButtonIcon", latexCode: "\\begin{Bmatrix} {} & {} \\\\ {} & {} \\end{Bmatrix} ")
        items.sections[1].addItem(withName: "Empty 2x2 Matrix in Determinant", imageName: "Empty2x2MatrixInDeterminantButtonIcon", latexCode: "\\begin{vmatrix} {} & {} \\\\ {} & {} \\end{vmatrix} ")
        items.sections[1].addItem(withName: "Empty 2x2 Matrix in Double Vertical Bars", imageName: "Empty2x2MatrixInDoubleVerticalBarsButtonIcon", latexCode: "\\begin{Vmatrix} {} & {} \\\\ {} & {} \\end{Vmatrix} ")
    }
}
