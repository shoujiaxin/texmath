//
//  FunctionViewController.swift
//  LaTeX Mathematics
//
//  Created by 寿佳鑫 on 2019/9/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FunctionViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func sineFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sin{}")
    }

    @IBAction func cosineFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\cos{}")
    }

    @IBAction func tangentFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\tan{}")
    }

    @IBAction func secantFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sec{}")
    }

    @IBAction func cosecantFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\csc{}")
    }

    @IBAction func arcsineFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\arcsin{}")
    }

    @IBAction func arccosineFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\arccos{}")
    }

    @IBAction func arctangentFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\arccos{}")
    }

    @IBAction func hyperbolicSineFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\sinh{}")
    }

    @IBAction func hyperbolicCosineFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\cosh{}")
    }

    @IBAction func hyperbolicTangentFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\tanh{}")
    }

    @IBAction func hyperbolicCotangentFunctionButtonClicked(_: EquationItemButton) {
        Utils.insertLatexCode(latexCode: "\\coth{}")
    }
}
