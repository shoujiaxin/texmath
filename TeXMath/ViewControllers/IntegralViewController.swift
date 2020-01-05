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

        items.addSection(withName: "Integrals")
        items.sections[0].addItem(withName: "Integral", imageName: "IntegralButtonIcon", latexCode: "\\int{} ")
        items.sections[0].addItem(withName: "Integral with Limits", imageName: "IntegralWithLimitsButtonIcon", latexCode: "\\int_{}^{}{} ")
        items.sections[0].addItem(withName: "Double Integral", imageName: "DoubleIntegralButtonIcon", latexCode: "\\iint{} ")
        items.sections[0].addItem(withName: "Double Integral with Limits", imageName: "DoubleIntegralWithLimitsButtonIcon", latexCode: "\\iint_{}^{}{} ")
        items.sections[0].addItem(withName: "Triple Integral", imageName: "TripleIntegralButtonIcon", latexCode: "\\iiint{} ")
        items.sections[0].addItem(withName: "Triple Integral with Limits", imageName: "TripleIntegralWithLimitsButtonIcon", latexCode: "\\iiint_{}^{}{} ")

        items.addSection(withName: "Contour Integrals")
        items.sections[1].addItem(withName: "Contour Integral", imageName: "ContourIntegralButtonIcon", latexCode: "\\oint{} ")
        items.sections[1].addItem(withName: "Contour Integral with Limits", imageName: "ContourIntegralWithLimitsButtonIcon", latexCode: "\\oint_{}^{}{} ")
    }
}
