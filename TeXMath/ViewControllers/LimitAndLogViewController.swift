//
//  LimitAndLogViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/19.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class LimitAndLogViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Functions")
        items.sections[0].addItem(withName: "Logarithm with Empty Base", imageName: "LogarithmWithEmptyBaseButtonIcon", latexCode: "\\log_{}{} ")
        items.sections[0].addItem(withName: "Logarithm", imageName: "LogarithmWithNoBaseButtonIcon", latexCode: "\\log{} ")
        items.sections[0].addItem(withName: "Natural Logarithm", imageName: "NaturalLogarithmButtonIcon", latexCode: "\\ln{} ")
        items.sections[0].addItem(withName: "Limit", imageName: "LimitButtonIcon", latexCode: "\\lim_{}{} ")
        items.sections[0].addItem(withName: "Maximum", imageName: "MaximumButtonIcon", latexCode: "\\max{} ")
        items.sections[0].addItem(withName: "Maximum with Base", imageName: "MaximumWithBaseButtonIcon", latexCode: "\\max_{}{} ")
        items.sections[0].addItem(withName: "Minimum", imageName: "MinimumButtonIcon", latexCode: "\\min{} ")
        items.sections[0].addItem(withName: "Minimum with Base", imageName: "MinimumWithBaseButtonIcon", latexCode: "\\min_{}{} ")
    }
}
