//
//  RadicalViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class RadicalViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Radicals")
        items.sections[0].addItem(withName: "Square Root", imageName: "SquareRootButtonIcon", latexCode: "\\sqrt{} ")
        items.sections[0].addItem(withName: "Radical with Degree", imageName: "RadicalWithDegreeButtonIcon", latexCode: "\\sqrt[]{} ")
        items.sections[0].addItem(withName: "Square Root with Degree", imageName: "SquareRootWithDegreeButtonIcon", latexCode: "\\sqrt[2]{} ")
        items.sections[0].addItem(withName: "Cubic Root", imageName: "CubicRootButtonIcon", latexCode: "\\sqrt[3]{} ")
    }
}
