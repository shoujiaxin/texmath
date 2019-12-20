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

    // MARK: Basic

    @IBAction func plusMinusButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\pm ")
    }

    // MARK: Lowercase

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

    @IBAction func lowercasePiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\pi ")
    }

    @IBAction func lowercaseVarpiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varpi ")
    }

    @IBAction func lowercaseRhoButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\rho ")
    }

    @IBAction func lowercaseVarrhoButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varrho ")
    }

    @IBAction func lowercaseSigmaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sigma ")
    }

    @IBAction func lowercaseVarsigmaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varsigma ")
    }

    @IBAction func lowercaseTauButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\tau ")
    }

    @IBAction func lowercaseUpsilonButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\upsilon ")
    }

    @IBAction func lowercaseVarphiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\varphi ")
    }

    @IBAction func lowercasePhiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\phi ")
    }

    @IBAction func lowercaseChiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\chi ")
    }

    @IBAction func lowercasePsiButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\psi ")
    }

    @IBAction func lowercaseOmegaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\omega ")
    }

    // MARK: Uppercase

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

    // MARK: Letter-Like

    @IBAction func digammaButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\digamma ")
    }

    @IBAction func ellButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ell ")
    }

    @IBAction func wpButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\wp ")
    }

    @IBAction func reButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Re ")
    }

    @IBAction func alephButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\aleph ")
    }

    @IBAction func bethButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\beth ")
    }

    @IBAction func dalethButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\daleth ")
    }

    @IBAction func gimelButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\gimel ")
    }
}
