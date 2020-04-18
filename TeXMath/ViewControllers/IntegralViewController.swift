//
//  IntegralViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/18.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class IntegralViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        addSection(withName: "Integrals")
        sections[0].addItem(withName: "Integral", imageName: "IntegralButtonIcon", latexCode: "\\int{} ")
        sections[0].addItem(withName: "Integral with Limits", imageName: "IntegralWithLimitsButtonIcon", latexCode: "\\int_{}^{}{} ")
        sections[0].addItem(withName: "Double Integral", imageName: "DoubleIntegralButtonIcon", latexCode: "\\iint{} ")
        sections[0].addItem(withName: "Double Integral with Limits", imageName: "DoubleIntegralWithLimitsButtonIcon", latexCode: "\\iint_{}^{}{} ")
        sections[0].addItem(withName: "Triple Integral", imageName: "TripleIntegralButtonIcon", latexCode: "\\iiint{} ")
        sections[0].addItem(withName: "Triple Integral with Limits", imageName: "TripleIntegralWithLimitsButtonIcon", latexCode: "\\iiint_{}^{}{} ")

        addSection(withName: "Contour Integrals")
        sections[1].addItem(withName: "Contour Integral", imageName: "ContourIntegralButtonIcon", latexCode: "\\oint{} ")
        sections[1].addItem(withName: "Contour Integral with Limits", imageName: "ContourIntegralWithLimitsButtonIcon", latexCode: "\\oint_{}^{}{} ")
    }
}
