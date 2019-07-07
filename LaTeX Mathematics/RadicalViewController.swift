//
//  RadicalViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class RadicalViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func squareRootButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sqrt{}")
    }

    @IBAction func radicalWithDegreeButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sqrt[]{}")
    }

    @IBAction func squareRootWithDegreeButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sqrt[2]{}")
    }

    @IBAction func cubicRootButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sqrt[3]{}")
    }
}
