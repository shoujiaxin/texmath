//
//  RadicalViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class RadicalViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func squareRootButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sqrt{} ")
    }

    @IBAction func radicalWithDegreeButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sqrt[]{} ")
    }

    @IBAction func squareRootWithDegreeButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sqrt[2]{} ")
    }

    @IBAction func cubicRootButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sqrt[3]{} ")
    }
}
