//
//  OperatorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/20.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class OperatorViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func colonEqualButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: ":= ")
    }

    @IBAction func equalEqualButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "== ")
    }

    @IBAction func plusEqualButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "+= ")
    }

    @IBAction func minusEqualButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "-= ")
    }

    @IBAction func deltaEqualToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\triangleq ")
    }

    @IBAction func leftwardsArrowBelowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\xleftarrow{} ")
    }

    @IBAction func leftwardsArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\xleftarrow[]{} ")
    }

    @IBAction func rightwardsArrowBelowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\xrightarrow{} ")
    }

    @IBAction func rightwardsArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\xrightarrow[]{} ")
    }
}
