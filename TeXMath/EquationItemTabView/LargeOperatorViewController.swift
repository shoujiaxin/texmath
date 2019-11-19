//
//  LargeOperatorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/19.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LargeOperatorViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func summationButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sum{} ")
    }

    @IBAction func summationWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sum_{}^{}{} ")
    }

    @IBAction func productButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\prod{} ")
    }

    @IBAction func productWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\prod_{}^{}{} ")
    }

    @IBAction func coProductButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\coprod{} ")
    }

    @IBAction func coProeuctWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\coprod_{}^{}{} ")
    }

    @IBAction func unionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigcup{} ")
    }

    @IBAction func unionWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigcup_{}^{}{} ")
    }

    @IBAction func intersectionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigcap{} ")
    }

    @IBAction func intersectionWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigcap_{}^{}{} ")
    }

    @IBAction func logicalOrButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigvee{} ")
    }

    @IBAction func logicalOrWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigvee_{}^{}{} ")
    }

    @IBAction func logicalAndButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigwedge{} ")
    }

    @IBAction func logicalAndWithLimitsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bigwedge_{}^{}{} ")
    }
}
