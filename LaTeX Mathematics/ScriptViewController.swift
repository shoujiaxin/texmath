//
//  ScriptViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/7/7.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class ScriptViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func superscriptButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "{}^{}")
    }

    @IBAction func subscriptButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "{}_{}")
    }

    @IBAction func subsuperscriptButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "{}_{}^{}")
    }

    @IBAction func leftSubsuperscriptButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "_{}^{}{}")
    }
}
