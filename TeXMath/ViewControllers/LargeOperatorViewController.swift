//
//  LargeOperatorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/19.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LargeOperatorViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        addSection(withName: "Large Operators")
        sections[0].addItem(withName: "Summation", imageName: "SummationButtonIcon", latexCode: "\\sum{} ")
        sections[0].addItem(withName: "Summation with Limits", imageName: "SummationWithLimitsButtonIcon", latexCode: "\\sum_{}^{}{} ")
        sections[0].addItem(withName: "Product", imageName: "ProductButtonIcon", latexCode: "\\prod{} ")
        sections[0].addItem(withName: "Product with Limits", imageName: "ProductWithLimitsButtonIcon", latexCode: "\\prod_{}^{}{} ")
        sections[0].addItem(withName: "CoProduct", imageName: "CoProductButtonIcon", latexCode: "\\coprod{} ")
        sections[0].addItem(withName: "CoProduct with Limits", imageName: "CoProductWithLimitsButtonIcon", latexCode: "\\coprod_{}^{}{} ")
        sections[0].addItem(withName: "Union", imageName: "UnionButtonIcon", latexCode: "\\bigcup{} ")
        sections[0].addItem(withName: "Union with Limits", imageName: "UnionWithLimitsButtonIcon", latexCode: "\\bigcup_{}^{}{} ")
        sections[0].addItem(withName: "Intersection", imageName: "IntersectionButtonIcon", latexCode: "\\bigcap{} ")
        sections[0].addItem(withName: "Intersection with Limits", imageName: "IntersectionWithLimitsButtonIcon", latexCode: "\\bigcap_{}^{}{} ")
        sections[0].addItem(withName: "Logical Or", imageName: "LogicalOrButtonIcon", latexCode: "\\bigvee{} ")
        sections[0].addItem(withName: "Logical Or with Limits", imageName: "LogicalOrWithLimitsButtonIcon", latexCode: "\\bigvee_{}^{}{} ")
        sections[0].addItem(withName: "Logical And", imageName: "LogicalAndButtonIcon", latexCode: "\\bigwedge{} ")
        sections[0].addItem(withName: "Logical And with Limits", imageName: "LogicalAndWithLimitsButtonIcon", latexCode: "\\bigwedge_{}^{}{} ")
    }
}
