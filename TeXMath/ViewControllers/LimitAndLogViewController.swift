//
//  LimitAndLogViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/19.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LimitAndLogViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func logarithmWithEmptyBaseButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\log_{}{} ")
    }

    @IBAction func logarithmWithNoBaseButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\log{} ")
    }

    @IBAction func naturalLogarithmButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ln{} ")
    }

    @IBAction func limitButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\lim_{}{} ")
    }

    @IBAction func maximumButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\max{} ")
    }

    @IBAction func maximumWithBaseButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\max_{}{} ")
    }

    @IBAction func minimumButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\min{} ")
    }

    @IBAction func minimumWithBaseButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\min_{}{} ")
    }
}
