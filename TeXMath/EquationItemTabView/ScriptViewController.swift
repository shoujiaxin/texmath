//
//  ScriptViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class ScriptViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func superscriptButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "{}^{} ")
    }

    @IBAction func subscriptButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "{}_{} ")
    }

    @IBAction func subscriptSuperscriptButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "{}_{}^{} ")
    }

    @IBAction func leftSubscriptSuperscriptButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "_{}^{}{} ")
    }
}
