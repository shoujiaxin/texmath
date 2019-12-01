//
//  AccentViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class AccentViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func dotButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\dot{} ")
    }

    @IBAction func doubleDotButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ddot{} ")
    }

    @IBAction func tripleDotButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\dddot{} ")
    }

    @IBAction func hatButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\hat{} ")
    }

    @IBAction func checkButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\check{} ")
    }

    @IBAction func acuteButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\acute{} ")
    }

    @IBAction func graveButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\grave{} ")
    }

    @IBAction func breveButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\breve{} ")
    }

    @IBAction func tildeButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\tilde{} ")
    }

    @IBAction func barButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\bar{} ")
    }

    @IBAction func vectorButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\vec{} ")
    }

    @IBAction func overbraceButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\overbrace{} ")
    }

    @IBAction func underbraceButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\underbrace{} ")
    }
}
