//
//  FunctionViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/20.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FunctionViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sin{} ")
    }

    @IBAction func cosineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cos{} ")
    }

    @IBAction func tangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\tan{} ")
    }

    @IBAction func cotangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cot{} ")
    }

    @IBAction func secantFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sec{} ")
    }

    @IBAction func cosecantFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\csc{} ")
    }

    @IBAction func inverseSineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sin^{-1}{} ")
    }

    @IBAction func inverseCosineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cos^{-1}{} ")
    }

    @IBAction func inverseTangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\tan^{-1}{} ")
    }

    @IBAction func inverseCotangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cot^{-1}{} ")
    }

    @IBAction func inverseSecantFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sec^{-1}{} ")
    }

    @IBAction func inverseCosecantFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\csc^{-1}{} ")
    }

    @IBAction func hyperbolicSineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sinh{} ")
    }

    @IBAction func hyperbolicCosineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cosh{} ")
    }

    @IBAction func hyperbolicTangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\tanh{} ")
    }

    @IBAction func hyperbolicCotangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\coth{} ")
    }

    @IBAction func arcsineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\arcsin{} ")
    }

    @IBAction func arccosineFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\arccos{} ")
    }

    @IBAction func arctangentFunctionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\arctan{} ")
    }
}
