//
//  IntegralViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/18.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class IntegralViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func integralButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\int{} ")
    }

    @IBAction func integralWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\int_{}^{}{} ")
    }

    @IBAction func doubleIntegralButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\iint{} ")
    }

    @IBAction func doubleIntegralWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\iint_{}^{}{} ")
    }

    @IBAction func tripleIntegralButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\iiint{} ")
    }

    @IBAction func tripleIntegralWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\iiint_{}^{}{} ")
    }

    @IBAction func contourIntegralButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\oint{} ")
    }

    @IBAction func contourIntegralWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\oint_{}^{}{} ")
    }
}
