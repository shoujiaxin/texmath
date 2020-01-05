//
//  AccentViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class AccentViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        items.addSection(withName: "Accents")
        items.sections[0].addItem(withName: "Dot", imageName: "DotButtonIcon", latexCode: "\\dot{} ")
        items.sections[0].addItem(withName: "Double Dot", imageName: "DoubleDotButtonIcon", latexCode: "\\ddot{} ")
        items.sections[0].addItem(withName: "Triple Dot", imageName: "TripleDotButtonIcon", latexCode: "\\dddot{} ")
        items.sections[0].addItem(withName: "Hat", imageName: "HatButtonIcon", latexCode: "\\hat{} ")
        items.sections[0].addItem(withName: "Check", imageName: "CheckButtonIcon", latexCode: "\\check{} ")
        items.sections[0].addItem(withName: "Acute", imageName: "AcuteButtonIcon", latexCode: "\\acute{} ")
        items.sections[0].addItem(withName: "Grave", imageName: "GraveButtonIcon", latexCode: "\\grave{} ")
        items.sections[0].addItem(withName: "Breve", imageName: "BreveButtonIcon", latexCode: "\\breve{} ")
        items.sections[0].addItem(withName: "Tilde", imageName: "TildeButtonIcon", latexCode: "\\tilde{} ")
        items.sections[0].addItem(withName: "Bar", imageName: "BarButtonIcon", latexCode: "\\bar{} ")
        items.sections[0].addItem(withName: "Vector", imageName: "VectorButtonIcon", latexCode: "\\vec{} ")
        items.sections[0].addItem(withName: "Overbrace", imageName: "OverbraceButtonIcon", latexCode: "\\overbrace{} ")
        items.sections[0].addItem(withName: "Underbrace", imageName: "UnderbraceButtonIcon", latexCode: "\\underbrace{} ")
    }
}
