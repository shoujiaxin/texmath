//
//  FractionViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FractionViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Fractions")
        items.sections[0].addItem(withName: "Stacked Fraction", imageName: "StackedFractionButtonIcon", latexCode: "\\frac{}{} ")
        items.sections[0].addItem(withName: "Linear Fraction", imageName: "LinearFractionButtonIcon", latexCode: "{}/{} ")
    }
}
