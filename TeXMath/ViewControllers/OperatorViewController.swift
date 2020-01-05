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

        items.addSection(withName: "Basic Operators")
        items.sections[0].addItem(withName: "Colon Equal", imageName: "ColonEqualButtonIcon", latexCode: ":= ")
        items.sections[0].addItem(withName: "Equal Equal", imageName: "EqualEqualButtonIcon", latexCode: "== ")
        items.sections[0].addItem(withName: "Plus Equal", imageName: "PlusEqualButtonIcon", latexCode: "+= ")
        items.sections[0].addItem(withName: "Minus Equal", imageName: "MinusEqualButtonIcon", latexCode: "-= ")
        items.sections[0].addItem(withName: "Delta Equal To", imageName: "DeltaEqualToButtonIcon", latexCode: "\\triangleq ")

        items.addSection(withName: "Operator Structures")
        items.sections[1].addItem(withName: "Leftwards Arrow Below", imageName: "LeftwardsArrowBelowButtonIcon", latexCode: "\\xleftarrow{} ")
        items.sections[1].addItem(withName: "Leftwards Arrow", imageName: "LeftwardsArrowButtonIcon", latexCode: "\\xleftarrow[]{} ")
        items.sections[1].addItem(withName: "Rightwards Arrow Below", imageName: "RightwardsArrowBelowButtonIcon", latexCode: "\\xrightarrow{} ")
        items.sections[1].addItem(withName: "Rightwards Arrow", imageName: "RightwardsArrowButtonIcon", latexCode: "\\xrightarrow[]{} ")
    }
}
