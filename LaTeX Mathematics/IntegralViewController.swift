//
//  IntegralViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/8.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class IntegralViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func integralButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\int{}")
    }

    @IBAction func integralWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\int_{}^{}{}")
    }

    @IBAction func doubleIntegralButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\iint{}")
    }

    @IBAction func doubleIntegralWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\iint_{}^{}{}")
    }

    @IBAction func tripleIntegralButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\iiint{}")
    }

    @IBAction func tripleIntegralWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\iiint_{}^{}{}")
    }

    @IBAction func contourIntegralButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\oint{}")
    }

    @IBAction func contourIntegralWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\oint_{}^{}{}")
    }
}
