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

        addSection(withName: "Radicals")
        sections[0].addItem(withName: "Square Root", imageName: "SquareRootButtonIcon", latexCode: "\\sqrt{} ")
        sections[0].addItem(withName: "Radical with Degree", imageName: "RadicalWithDegreeButtonIcon", latexCode: "\\sqrt[]{} ")
        sections[0].addItem(withName: "Square Root with Degree", imageName: "SquareRootWithDegreeButtonIcon", latexCode: "\\sqrt[2]{} ")
        sections[0].addItem(withName: "Cubic Root", imageName: "CubicRootButtonIcon", latexCode: "\\sqrt[3]{} ")
    }
}
