//
//  LargeOperatorViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/9.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LargeOperatorViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func summationButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sum{}")
    }

    @IBAction func summationWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sum_{}^{}{}")
    }

    @IBAction func productButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\prod{}")
    }

    @IBAction func productWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\prod_{}^{}{}")
    }

    @IBAction func coproductButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\coprod{}")
    }

    @IBAction func coproductWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\coprod_{}^{}{}")
    }

    @IBAction func unionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigcup{}")
    }

    @IBAction func unionWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigcup_{}^{}{}")
    }

    @IBAction func intersectionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigcap{}")
    }

    @IBAction func intersectionWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigcap_{}^{}{}")
    }

    @IBAction func logicalOrButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigvee{}")
    }

    @IBAction func logicalOrWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigvee_{}^{}{}")
    }

    @IBAction func logicalAndButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigwedge{}")
    }

    @IBAction func logicalAndWithLimitsButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\bigwedge_{}^{}{}")
    }
}
