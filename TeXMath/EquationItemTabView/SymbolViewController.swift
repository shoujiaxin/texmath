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

    @IBAction func minusPlusButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\mp ")
    }

    @IBAction func infinityButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\infty ")
    }

    @IBAction func notEqualToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\neq ")
    }

    @IBAction func multiplicationSignButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\times ")
    }

    @IBAction func divisionSignButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\div ")
    }

    @IBAction func proportionalToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\propto ")
    }

    @IBAction func muchLessThanButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ll ")
    }

    @IBAction func muchGreaterThanButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\gg ")
    }

    @IBAction func lessThanOrEqualToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\leq ")
    }

    @IBAction func greaterThanOrEqualToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\geq ")
    }

    @IBAction func approximatelyEqualToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cong ")
    }

    @IBAction func asymptoticToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\approx ")
    }

    @IBAction func identicalToButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\equiv ")
    }

    @IBAction func forAllButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\forall ")
    }

    @IBAction func existsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\exists ")
    }

    @IBAction func notExistsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\nexists ")
    }

    @IBAction func inButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\in ")
    }

    @IBAction func niButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ni ")
    }

    @IBAction func notInButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\notin ")
    }

    @IBAction func partialDifferentialButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\partial ")
    }

    @IBAction func angleButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\angle ")
    }

    @IBAction func intersectionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cap ")
    }

    @IBAction func unionButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cup ")
    }

    @IBAction func uplusButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\uplus ")
    }

    @IBAction func sqcapButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sqcap ")
    }

    @IBAction func sqcupButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\sqcup ")
    }

    @IBAction func wedgeButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\wedge ")
    }

    @IBAction func veeButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\vee ")
    }

    @IBAction func circledDotButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\odot ")
    }

    @IBAction func circledMinusButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ominus ")
    }

    @IBAction func circledPlusButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\oplus ")
    }

    @IBAction func circledSlashButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\oslash ")
    }

    @IBAction func circledTimesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\otimes ")
    }

    @IBAction func leftArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\leftarrow ")
    }

    @IBAction func rightArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\rightarrow ")
    }

    @IBAction func upArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\uparrow ")
    }

    @IBAction func downArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\downarrow ")
    }

    @IBAction func leftDoubleArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Leftarrow ")
    }

    @IBAction func rightDoubleArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Rightarrow ")
    }

    @IBAction func leftRightArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\leftrightarrow ")
    }

    @IBAction func leftRightDoubleArrowButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\Leftrightarrow ")
    }

    @IBAction func thereforeButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\therefore ")
    }

    @IBAction func becauseButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\because ")
    }

    @IBAction func cdotButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cdot ")
    }

    @IBAction func cdotsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\cdots ")
    }

    @IBAction func vdotsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\vdots ")
    }

    @IBAction func ddotsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\ddots ")
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
