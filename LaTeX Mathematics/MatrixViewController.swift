//
//  MatrixViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/9/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class MatrixViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func oneByTwoEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} & {} \\end{matrix}")
    }

    @IBAction func twoByOneEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} \\\\ {} \\end{matrix}")
    }

    @IBAction func oneByThreeEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} & {} & {} \\end{matrix}")
    }

    @IBAction func threeByOneEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} \\\\ {} \\\\ {} \\end{matrix}")
    }

    @IBAction func twoByTwoEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} & {} \\\\ {} & {} \\end{matrix}")
    }

    @IBAction func twoByThreeEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} & {} & {} \\\\ {} & {} & {} \\end{matrix}")
    }

    @IBAction func threeByTwoEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} & {} \\\\ {} & {} \\\\ {} & {} \\end{matrix}")
    }

    @IBAction func threeByThreeEmptyMatrixButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{matrix} {} & {} & {} \\\\ {} & {} & {} \\\\ {} & {} & {} \\end{matrix}")
    }

    @IBAction func empty2x2DeterminantButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{vmatrix} {} & {} \\\\ {} & {} \\end{vmatrix}")
    }

    @IBAction func empty2x2MatrixInBracesButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{Bmatrix} {} & {} \\\\ {} & {} \\end{Bmatrix}")
    }

    @IBAction func empty2x2MatrixInBracketsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{bmatrix} {} & {} \\\\ {} & {} \\end{bmatrix}")
    }

    @IBAction func empty2x2MatrixInParenthesesButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{pmatrix} {} & {} \\\\ {} & {} \\end{pmatrix}")
    }

    @IBAction func empty2x2MatrixInDoubleVerticalBarsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\begin{Vmatrix} {} & {} \\\\ {} & {} \\end{Vmatrix}")
    }
}
