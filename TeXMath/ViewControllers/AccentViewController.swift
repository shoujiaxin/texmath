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

        addSection(withName: "Accents")
        sections[0].addItem(withName: "Dot", imageName: "DotButtonIcon", latexCode: "\\dot{} ")
        sections[0].addItem(withName: "Double Dot", imageName: "DoubleDotButtonIcon", latexCode: "\\ddot{} ")
        sections[0].addItem(withName: "Triple Dot", imageName: "TripleDotButtonIcon", latexCode: "\\dddot{} ")
        sections[0].addItem(withName: "Hat", imageName: "HatButtonIcon", latexCode: "\\hat{} ")
        sections[0].addItem(withName: "Check", imageName: "CheckButtonIcon", latexCode: "\\check{} ")
        sections[0].addItem(withName: "Acute", imageName: "AcuteButtonIcon", latexCode: "\\acute{} ")
        sections[0].addItem(withName: "Grave", imageName: "GraveButtonIcon", latexCode: "\\grave{} ")
        sections[0].addItem(withName: "Breve", imageName: "BreveButtonIcon", latexCode: "\\breve{} ")
        sections[0].addItem(withName: "Tilde", imageName: "TildeButtonIcon", latexCode: "\\tilde{} ")
        sections[0].addItem(withName: "Bar", imageName: "BarButtonIcon", latexCode: "\\bar{} ")
        sections[0].addItem(withName: "Vector", imageName: "VectorButtonIcon", latexCode: "\\vec{} ")
        sections[0].addItem(withName: "Overbrace", imageName: "OverbraceButtonIcon", latexCode: "\\overbrace{} ")
        sections[0].addItem(withName: "Underbrace", imageName: "UnderbraceButtonIcon", latexCode: "\\underbrace{} ")
    }
}
