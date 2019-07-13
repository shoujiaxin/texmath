//
//  OperatorViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/13.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class OperatorViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colonEqualButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: ":=")
    }

    @IBAction func equalEqualButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "==")
    }

    @IBAction func plusEqualButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "+=")
    }

    @IBAction func minusEqualButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "-=")
    }

    @IBAction func deltaEqualToButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\triangleq")
    }

    @IBAction func leftwardsArrowBelowButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\xleftarrow{}")
    }

    @IBAction func leftwardsArrowButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\xleftarrow[]{}")
    }

    @IBAction func rightwardsArrowBelowButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\xrightarrow{}")
    }

    @IBAction func rightwardsArrowButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\xrightarrow[]{}")
    }
}
