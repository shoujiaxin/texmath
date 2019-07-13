//
//  BracketViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/11.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class BracketViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func parenthesesButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left(  \\right)")
    }

    @IBAction func squareBracketsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left[  \\right]")
    }

    @IBAction func curlyBracesButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\{  \\right\\}")
    }

    @IBAction func angleBracketsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left<  \\right>")
    }

    @IBAction func floorBracketsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\lfloor  \\right\\rfloor")
    }

    @IBAction func ceilingBracketsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\lceil  \\right\\rceil")
    }

    @IBAction func verticalBarsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left|  \\right|")
    }

    @IBAction func doubleVerticalBarsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\|  \\right\\|")
    }

    @IBAction func bracketsWithSeparatorsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left( {}|{} \\right)")
    }

    @IBAction func bracesWithSeparatorsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\{ {}|{} \\right\\}")
    }

    @IBAction func angleBracketsWithSeparatorsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left< {}|{} \\right>")
    }

    @IBAction func angleBracketsWithTwoSeparatorsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left< {}|{}|{} \\right>")
    }

    @IBAction func leftParenthesisButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left(  \\right.")
    }

    @IBAction func rightParenthesisButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right)")
    }

    @IBAction func leftBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left[  \\right.")
    }

    @IBAction func rightBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right]")
    }

    @IBAction func leftBraceButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\{  \\right.")
    }

    @IBAction func rightBraceButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right\\}")
    }

    @IBAction func leftAngleBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left<  \\right.")
    }

    @IBAction func rightAngleBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right>")
    }

    @IBAction func leftFloorBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\lfloor  \\right.")
    }

    @IBAction func rightFloorBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right\\rfloor")
    }

    @IBAction func leftCeilingBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\lceil  \\right.")
    }

    @IBAction func rightCeilingBracketButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right\\rceil")
    }

    @IBAction func leftVerticalBarButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left|  \\right.")
    }

    @IBAction func rightVerticalBarButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right|")
    }

    @IBAction func leftDoubleVerticalBarButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left\\|  \\right.")
    }

    @IBAction func rightDoubleVerticalBarButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\left.  \\right\\|")
    }
}
