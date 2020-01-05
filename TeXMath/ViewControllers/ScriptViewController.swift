//
//  ScriptViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/17.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class ScriptViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Subscripts and Superscripts")
        items.sections[0].addItem(withName: "Superscript", imageName: "SuperscriptButtonIcon", latexCode: "{}^{} ")
        items.sections[0].addItem(withName: "Subscript", imageName: "SubscriptButtonIcon", latexCode: "{}_{} ")
        items.sections[0].addItem(withName: "Subscript-Superscript", imageName: "SubscriptSuperscriptButtonIcon", latexCode: "{}_{}^{} ")
        items.sections[0].addItem(withName: "Left Subscript-Superscript", imageName: "LeftSubscriptSuperscriptButtonIcon", latexCode: "_{}^{}{} ")
    }
}
