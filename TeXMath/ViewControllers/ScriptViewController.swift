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

        addSection(withName: "Subscripts and Superscripts")
        sections[0].addItem(withName: "Superscript", imageName: "SuperscriptButtonIcon", latexCode: "{}^{} ")
        sections[0].addItem(withName: "Subscript", imageName: "SubscriptButtonIcon", latexCode: "{}_{} ")
        sections[0].addItem(withName: "Subscript-Superscript", imageName: "SubscriptSuperscriptButtonIcon", latexCode: "{}_{}^{} ")
        sections[0].addItem(withName: "Left Subscript-Superscript", imageName: "LeftSubscriptSuperscriptButtonIcon", latexCode: "_{}^{}{} ")
    }
}
