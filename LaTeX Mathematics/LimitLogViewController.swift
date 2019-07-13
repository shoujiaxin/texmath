//
//  LimitLogViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/13.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LimitLogViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logarithmWithBaseButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\log_{}{}")
    }

    @IBAction func logarithmButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\log{}")
    }

    @IBAction func naturalLogarithmButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\ln{}")
    }

    @IBAction func limitButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\lim_{}{}")
    }

    @IBAction func maximumButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\max{}")
    }

    @IBAction func maximumWithBaseButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\max_{}{}")
    }

    @IBAction func minimumButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\min{}")
    }

    @IBAction func minimumWithBaseButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\min_{}{}")
    }
}
