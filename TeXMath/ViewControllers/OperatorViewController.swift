//
//  OperatorViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/20.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class OperatorViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        addSection(withName: "Basic Operators")
        sections[0].addItem(withName: "Colon Equal", imageName: "ColonEqualButtonIcon", latexCode: ":= ")
        sections[0].addItem(withName: "Equal Equal", imageName: "EqualEqualButtonIcon", latexCode: "== ")
        sections[0].addItem(withName: "Plus Equal", imageName: "PlusEqualButtonIcon", latexCode: "+= ")
        sections[0].addItem(withName: "Minus Equal", imageName: "MinusEqualButtonIcon", latexCode: "-= ")
        sections[0].addItem(withName: "Delta Equal to", imageName: "DeltaEqualToButtonIcon", latexCode: "\\triangleq ")

        addSection(withName: "Operator Structures")
        sections[1].addItem(withName: "Leftwards Arrow Below", imageName: "LeftwardsArrowBelowButtonIcon", latexCode: "\\xleftarrow{} ")
        sections[1].addItem(withName: "Leftwards Arrow", imageName: "LeftwardsArrowButtonIcon", latexCode: "\\xleftarrow[]{} ")
        sections[1].addItem(withName: "Rightwards Arrow Below", imageName: "RightwardsArrowBelowButtonIcon", latexCode: "\\xrightarrow{} ")
        sections[1].addItem(withName: "Rightwards Arrow", imageName: "RightwardsArrowButtonIcon", latexCode: "\\xrightarrow[]{} ")
    }
}
