//
//  SymbolViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class SymbolViewController: NSViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func lowercaseAlphaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\alpha ")
    }

    @IBAction func lowercaseBetaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\beta ")
    }

    @IBAction func lowercaseGammaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\gamma ")
    }

    @IBAction func lowercaseDeltaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\delta ")
    }

    @IBAction func lowercaseVarepsilonButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varepsilon ")
    }

    @IBAction func lowercaseEpsilonButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\epsilon ")
    }

    @IBAction func lowercaseZetaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\zeta ")
    }

    @IBAction func lowercaseEtaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\eta ")
    }

    @IBAction func lowercaseThetaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\theta ")
    }

    @IBAction func lowercaseVarthetaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\vartheta ")
    }

    @IBAction func lowercaseIotaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\iota ")
    }

    @IBAction func lowercaseKappaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\kappa ")
    }

    @IBAction func lowercaseVarkappaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varkappa ")
    }

    @IBAction func lowercaseLambdaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\lambda ")
    }

    @IBAction func lowercaseMuButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\mu ")
    }

    @IBAction func lowercaseNuButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\nu ")
    }

    @IBAction func lowercaseXiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\xi ")
    }

    @IBAction func lowercaseOmicronButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "o ")
    }

    @IBAction func LowercasePiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\pi ")
    }

    @IBAction func LowercaseVarpiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varpi ")
    }

    @IBAction func LowercaseRhoButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\rho ")
    }

    @IBAction func LowercaseVarrhoButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varrho ")
    }

    @IBAction func LowercaseSigmaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sigma ")
    }

    @IBAction func LowercaseVarsigmaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varsigma ")
    }

    @IBAction func LowercaseTauButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\tau ")
    }

    @IBAction func LowercaseUpsilonButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\upsilon ")
    }

    @IBAction func LowercaseVarphiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varphi ")
    }

    @IBAction func LowercasePhiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\phi ")
    }

    @IBAction func LowercaseChiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\chi ")
    }

    @IBAction func LowercasePsiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\psi ")
    }

    @IBAction func LowercaseOmegaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\omega ")
    }

    @IBAction func digammaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\digamma ")
    }

    @IBAction func uppercaseDeltaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Delta ")
    }

    @IBAction func uppercaseGammaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Gamma ")
    }

    @IBAction func uppercaseLambdaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Lambda ")
    }

    @IBAction func uppercaseOmegaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Omega ")
    }

    @IBAction func uppercasePhiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Phi ")
    }

    @IBAction func uppercasePiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Pi ")
    }

    @IBAction func uppercasePsiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Psi ")
    }

    @IBAction func uppercaseSigmaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Sigma ")
    }

    @IBAction func uppercaseThetaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Theta ")
    }

    @IBAction func uppercaseUpsilonButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Upsilon ")
    }

    @IBAction func uppercaseXiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Xi ")
    }
}
