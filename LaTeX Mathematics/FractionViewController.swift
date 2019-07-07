//
//  FractionViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FractionViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func stackedFractionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\frac{}{}")
    }

    @IBAction func linearFractionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "{}/{}")
    }
}
