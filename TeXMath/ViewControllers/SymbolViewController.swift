//
//  SymbolViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class SymbolViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        // MARK: Basic

        items.addSection(withName: "Basic")
        items.sections[0].addItem(withName: "Plus Minus", imageName: "PlusMinusButtonIcon", latexCode: "\\pm ")
        items.sections[0].addItem(withName: "Minus Plus", imageName: "MinusPlusButtonIcon", latexCode: "\\mp ")
        items.sections[0].addItem(withName: "Infinity", imageName: "InfinityButtonIcon", latexCode: "\\infty ")
        items.sections[0].addItem(withName: "Not Equal to", imageName: "NotEqualToButtonIcon", latexCode: "\\neq ")
        items.sections[0].addItem(withName: "Multiplication Sign", imageName: "MultiplicationSignButtonIcon", latexCode: "\\times ")
        items.sections[0].addItem(withName: "Division Sign", imageName: "DivisionSignButtonIcon", latexCode: "\\div ")
        items.sections[0].addItem(withName: "Proportional to", imageName: "ProportionalToButtonIcon", latexCode: "\\propto ")
        items.sections[0].addItem(withName: "Much Less Than", imageName: "MuchLessThanButtonIcon", latexCode: "\\ll ")
        items.sections[0].addItem(withName: "Much Greater Than", imageName: "MuchGreaterThanButtonIcon", latexCode: "\\gg ")
        items.sections[0].addItem(withName: "Less Than or Equal to", imageName: "LessThanOrEqualToButtonIcon", latexCode: "\\leq ")
        items.sections[0].addItem(withName: "Greater Than or Equal to", imageName: "GreaterThanOrEqualToButtonIcon", latexCode: "\\geq ")
        items.sections[0].addItem(withName: "Approximately Equal to", imageName: "ApproximatelyEqualToButtonIcon", latexCode: "\\cong ")
        items.sections[0].addItem(withName: "Asymptotic to", imageName: "AsymptoticToButtonIcon", latexCode: "\\approx ")
        items.sections[0].addItem(withName: "Identical to", imageName: "IdenticalToButtonIcon", latexCode: "\\equiv ")
        items.sections[0].addItem(withName: "For All", imageName: "ForAllButtonIcon", latexCode: "\\forall ")
        items.sections[0].addItem(withName: "There Exists", imageName: "ExistsButtonIcon", latexCode: "\\exists ")
        items.sections[0].addItem(withName: "There Does Not Exist", imageName: "NotExistsButtonIcon", latexCode: "\\nexists ")
        items.sections[0].addItem(withName: "Element of", imageName: "InButtonIcon", latexCode: "\\in ")
        items.sections[0].addItem(withName: "Contains as Member", imageName: "NiButtonIcon", latexCode: "\\ni ")
        items.sections[0].addItem(withName: "Not An Element of", imageName: "NotInButtonIcon", latexCode: "\\notin ")
        items.sections[0].addItem(withName: "Partial Differential", imageName: "PartialDifferentialButtonIcon", latexCode: "\\partial ")
        items.sections[0].addItem(withName: "Angle", imageName: "AngleButtonIcon", latexCode: "\\angle ")
        items.sections[0].addItem(withName: "Intersection", imageName: "CapButtonIcon", latexCode: "\\cap ")
        items.sections[0].addItem(withName: "Union", imageName: "CupButtonIcon", latexCode: "\\cup ")
        items.sections[0].addItem(withName: "Multiset Union", imageName: "UplusButtonIcon", latexCode: "\\uplus ")
        items.sections[0].addItem(withName: "Square Cap", imageName: "SqcapButtonIcon", latexCode: "\\sqcap ")
        items.sections[0].addItem(withName: "Square Cup", imageName: "SqcupButtonIcon", latexCode: "\\sqcup ")
        items.sections[0].addItem(withName: "Logical And", imageName: "WedgeButtonIcon", latexCode: "\\wedge ")
        items.sections[0].addItem(withName: "Logical Or", imageName: "VeeButtonIcon", latexCode: "\\vee ")
        items.sections[0].addItem(withName: "Circled Dot", imageName: "CircledDotButtonIcon", latexCode: "\\odot ")
        items.sections[0].addItem(withName: "Circled Minus", imageName: "CircledMinusButtonIcon", latexCode: "\\ominus ")
        items.sections[0].addItem(withName: "Circled Plus", imageName: "CircledPlusButtonIcon", latexCode: "\\oplus ")
        items.sections[0].addItem(withName: "Circled Slash", imageName: "CircledSlashButtonIcon", latexCode: "\\oslash ")
        items.sections[0].addItem(withName: "Circled Times", imageName: "CircledTimesButtonIcon", latexCode: "\\otimes ")
        items.sections[0].addItem(withName: "Left Arrow", imageName: "LeftArrowButtonIcon", latexCode: "\\leftarrow ")
        items.sections[0].addItem(withName: "Right Arrow", imageName: "RightArrowButtonIcon", latexCode: "\\rightarrow ")
        items.sections[0].addItem(withName: "Up Arrow", imageName: "UpArrowButtonIcon", latexCode: "\\uparrow ")
        items.sections[0].addItem(withName: "Down Arrow", imageName: "DownArrowButtonIcon", latexCode: "\\downarrow ")
        items.sections[0].addItem(withName: "Left Double Arrow", imageName: "LeftDoubleArrowButtonIcon", latexCode: "\\Leftarrow ")
        items.sections[0].addItem(withName: "Right Double Arrow", imageName: "RightDoubleArrowButtonIcon", latexCode: "\\Rightarrow ")
        items.sections[0].addItem(withName: "Left-Right Arrow", imageName: "LeftRightArrowButtonIcon", latexCode: "\\leftrightarrow ")
        items.sections[0].addItem(withName: "Left-Right Double Arrow", imageName: "LeftRightDoubleArrowButtonIcon", latexCode: "\\Leftrightarrow ")
        items.sections[0].addItem(withName: "Therefore", imageName: "ThereforeButtonIcon", latexCode: "\\therefore ")
        items.sections[0].addItem(withName: "Because", imageName: "BecauseButtonIcon", latexCode: "\\because ")
        items.sections[0].addItem(withName: "Dot Operator", imageName: "CdotButtonIcon", latexCode: "\\cdot ")
        items.sections[0].addItem(withName: "Midline Horizontal Ellipsis", imageName: "CdotsButtonIcon", latexCode: "\\cdots ")
        items.sections[0].addItem(withName: "Vertical Ellipsis", imageName: "VdotsButtonIcon", latexCode: "\\vdots ")
        items.sections[0].addItem(withName: "Diagonal Ellipsis", imageName: "DdotsButtonIcon", latexCode: "\\ddots ")

        // MARK: Lowercase

        items.addSection(withName: "Lowercase")
        items.sections[1].addItem(withName: "Alpha", imageName: "LowercaseAlphaButtonIcon", latexCode: "\\alpha ")
        items.sections[1].addItem(withName: "Beta", imageName: "LowercaseBetaButtonIcon", latexCode: "\\beta ")
        items.sections[1].addItem(withName: "Gamma", imageName: "LowercaseGammaButtonIcon", latexCode: "\\gamma ")
        items.sections[1].addItem(withName: "Delta", imageName: "LowercaseDeltaButtonIcon", latexCode: "\\delta ")
        items.sections[1].addItem(withName: "Epsilon Variant", imageName: "LowercaseVarepsilonButtonIcon", latexCode: "\\varepsilon ")
        items.sections[1].addItem(withName: "Epsilon", imageName: "LowercaseEpsilonButtonIcon", latexCode: "\\epsilon ")
        items.sections[1].addItem(withName: "Zeta", imageName: "LowercaseZetaButtonIcon", latexCode: "\\zeta ")
        items.sections[1].addItem(withName: "Eta", imageName: "LowercaseEtaButtonIcon", latexCode: "\\eta ")
        items.sections[1].addItem(withName: "Theta", imageName: "LowercaseThetaButtonIcon", latexCode: "\\theta ")
        items.sections[1].addItem(withName: "Theta Variant", imageName: "LowercaseVarthetaButtonIcon", latexCode: "\\vartheta ")
        items.sections[1].addItem(withName: "Iota", imageName: "LowercaseIotaButtonIcon", latexCode: "\\iota ")
        items.sections[1].addItem(withName: "Kappa", imageName: "LowercaseKappaButtonIcon", latexCode: "\\kappa ")
        items.sections[1].addItem(withName: "Kappa Variant", imageName: "LowercaseVarkappaButtonIcon", latexCode: "\\varkappa ")
        items.sections[1].addItem(withName: "Lambda", imageName: "LowercaseLambdaButtonIcon", latexCode: "\\lambda ")
        items.sections[1].addItem(withName: "Mu", imageName: "LowercaseMuButtonIcon", latexCode: "\\mu ")
        items.sections[1].addItem(withName: "Nu", imageName: "LowercaseNuButtonIcon", latexCode: "\\nu ")
        items.sections[1].addItem(withName: "Xi", imageName: "LowercaseXiButtonIcon", latexCode: "\\xi ")
        items.sections[1].addItem(withName: "Omicron", imageName: "LowercaseOmicronButtonIcon", latexCode: "o ")
        items.sections[1].addItem(withName: "Pi", imageName: "LowercasePiButtonIcon", latexCode: "\\pi ")
        items.sections[1].addItem(withName: "Pi Variant", imageName: "LowercaseVarpiButtonIcon", latexCode: "\\varpi ")
        items.sections[1].addItem(withName: "Rho", imageName: "LowercaseRhoButtonIcon", latexCode: "\\rho ")
        items.sections[1].addItem(withName: "Rho Variant", imageName: "LowercaseVarrhoButtonIcon", latexCode: "\\varrho ")
        items.sections[1].addItem(withName: "Sigma", imageName: "LowercaseSigmaButtonIcon", latexCode: "\\sigma ")
        items.sections[1].addItem(withName: "Sigma Variant", imageName: "LowercaseVarsigmaButtonIcon", latexCode: "\\varsigma ")
        items.sections[1].addItem(withName: "Tau", imageName: "LowercaseTauButtonIcon", latexCode: "\\tau ")
        items.sections[1].addItem(withName: "Upsilon", imageName: "LowercaseUpsilonButtonIcon", latexCode: "\\upsilon ")
        items.sections[1].addItem(withName: "Phi Variant", imageName: "LowercaseVarphiButtonIcon", latexCode: "\\varphi ")
        items.sections[1].addItem(withName: "Phi", imageName: "LowercasePhiButtonIcon", latexCode: "\\phi ")
        items.sections[1].addItem(withName: "Chi", imageName: "LowercaseChiButtonIcon", latexCode: "\\chi ")
        items.sections[1].addItem(withName: "Psi", imageName: "LowercasePsiButtonIcon", latexCode: "\\psi ")
        items.sections[1].addItem(withName: "Omega", imageName: "LowercaseOmegaButtonIcon", latexCode: "\\omega ")

        // MARK: Uppercase

        items.addSection(withName: "Uppercase")
        items.sections[2].addItem(withName: "Delta", imageName: "UppercaseDeltaButtonIcon", latexCode: "\\Delta ")
        items.sections[2].addItem(withName: "Gamma", imageName: "UppercaseGammaButtonIcon", latexCode: "\\Gamma ")
        items.sections[2].addItem(withName: "Lambda", imageName: "UppercaseLambdaButtonIcon", latexCode: "\\Lambda ")
        items.sections[2].addItem(withName: "Omega", imageName: "UppercaseOmegaButtonIcon", latexCode: "\\Omega ")
        items.sections[2].addItem(withName: "Phi", imageName: "UppercasePhiButtonIcon", latexCode: "\\Phi ")
        items.sections[2].addItem(withName: "Pi", imageName: "UppercasePiButtonIcon", latexCode: "\\Pi ")
        items.sections[2].addItem(withName: "Psi", imageName: "UppercasePsiButtonIcon", latexCode: "\\Psi ")
        items.sections[2].addItem(withName: "Sigma", imageName: "UppercaseSigmaButtonIcon", latexCode: "\\Sigma ")
        items.sections[2].addItem(withName: "Theta", imageName: "UppercaseThetaButtonIcon", latexCode: "\\Theta ")
        items.sections[2].addItem(withName: "Upsilon", imageName: "UppercaseUpsilonButtonIcon", latexCode: "\\Upsilon ")
        items.sections[2].addItem(withName: "Xi", imageName: "UppercaseXiButtonIcon", latexCode: "\\Xi ")

        // MARK: Letter-Like

        items.addSection(withName: "Letter-Like Symbols")
        items.sections[3].addItem(withName: "Digamma", imageName: "DigammaButtonIcon", latexCode: "\\digamma ")
        items.sections[3].addItem(withName: "Script Small L", imageName: "EllButtonIcon", latexCode: "\\ell ")
        items.sections[3].addItem(withName: "Weierstrass Elliptic Function", imageName: "WpButtonIcon", latexCode: "\\wp ")
        items.sections[3].addItem(withName: "Real Part", imageName: "ReButtonIcon", latexCode: "\\Re ")
        items.sections[3].addItem(withName: "Aleph", imageName: "AlephButtonIcon", latexCode: "\\aleph ")
        items.sections[3].addItem(withName: "Beth", imageName: "BethButtonIcon", latexCode: "\\beth ")
        items.sections[3].addItem(withName: "Daleth", imageName: "DalethButtonIcon", latexCode: "\\daleth ")
        items.sections[3].addItem(withName: "Gimel", imageName: "GimelButtonIcon", latexCode: "\\gimel ")
    }
}
