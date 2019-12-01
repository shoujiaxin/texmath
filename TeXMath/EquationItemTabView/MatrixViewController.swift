//
//  MatrixViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/28.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class MatrixViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func oneByTwoEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} & {} \\end{matrix} ")
    }

    @IBAction func twoByOneEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} \\\\ {} \\end{matrix} ")
    }

    @IBAction func oneByThreeEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} & {} & {} \\end{matrix} ")
    }

    @IBAction func threeByOneEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} \\\\ {} \\\\ {} \\end{matrix} ")
    }

    @IBAction func twoByTwoEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} & {} \\\\ {} & {} \\end{matrix} ")
    }

    @IBAction func twoByThreeEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} & {} & {} \\\\ {} & {} & {} \\end{matrix} ")
    }

    @IBAction func threeByTwoEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} & {} \\\\ {} & {} \\\\ {} & {} \\end{matrix} ")
    }

    @IBAction func threeByThreeEmptyMatrixButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{matrix} {} & {} & {} \\\\ {} & {} & {} \\\\ {} & {} & {} \\end{matrix} ")
    }

    @IBAction func empty2x2MatrixInParenthesesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{pmatrix} {} & {} \\\\ {} & {} \\end{pmatrix} ")
    }

    @IBAction func empty2x2MatrixInBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{bmatrix} {} & {} \\\\ {} & {} \\end{bmatrix} ")
    }

    @IBAction func empty2x2MatrixInBracesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{Bmatrix} {} & {} \\\\ {} & {} \\end{Bmatrix} ")
    }

    @IBAction func empty2x2MatrixInDeterminantButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{vmatrix} {} & {} \\\\ {} & {} \\end{vmatrix} ")
    }

    @IBAction func empty2x2MatrixInDoubleVerticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\begin{Vmatrix} {} & {} \\\\ {} & {} \\end{Vmatrix} ")
    }
}
