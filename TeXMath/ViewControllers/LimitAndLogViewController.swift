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

        addSection(withName: "Functions")
        sections[0].addItem(withName: "Logarithm with Empty Base", imageName: "LogarithmWithEmptyBaseButtonIcon", latexCode: "\\log_{}{} ")
        sections[0].addItem(withName: "Logarithm", imageName: "LogarithmWithNoBaseButtonIcon", latexCode: "\\log{} ")
        sections[0].addItem(withName: "Natural Logarithm", imageName: "NaturalLogarithmButtonIcon", latexCode: "\\ln{} ")
        sections[0].addItem(withName: "Limit", imageName: "LimitButtonIcon", latexCode: "\\lim_{}{} ")
        sections[0].addItem(withName: "Maximum", imageName: "MaximumButtonIcon", latexCode: "\\max{} ")
        sections[0].addItem(withName: "Maximum with Base", imageName: "MaximumWithBaseButtonIcon", latexCode: "\\max_{}{} ")
        sections[0].addItem(withName: "Minimum", imageName: "MinimumButtonIcon", latexCode: "\\min{} ")
        sections[0].addItem(withName: "Minimum with Base", imageName: "MinimumWithBaseButtonIcon", latexCode: "\\min_{}{} ")
    }
}
