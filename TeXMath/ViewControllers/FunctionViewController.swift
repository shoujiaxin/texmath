//
//  FunctionViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/20.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class FunctionViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        addSection(withName: "Trigonometric Functions")
        sections[0].addItem(withName: "Sine Function", imageName: "SineFunctionButtonIcon", latexCode: "\\sin{} ")
        sections[0].addItem(withName: "Cosine Function", imageName: "CosineFunctionButtonIcon", latexCode: "\\cos{} ")
        sections[0].addItem(withName: "Tangent Function", imageName: "TangentFunctionButtonIcon", latexCode: "\\tan{} ")
        sections[0].addItem(withName: "Cotangent Function", imageName: "CotangentFunctionButtonIcon", latexCode: "\\cot{} ")
        sections[0].addItem(withName: "Secant Function", imageName: "SecantFunctionButtonIcon", latexCode: "\\sec{} ")
        sections[0].addItem(withName: "Cosecant Function", imageName: "CosecantFunctionButtonIcon", latexCode: "\\csc{} ")

        addSection(withName: "Inverse Trigonometric Functions")
        sections[1].addItem(withName: "Inverse Sine Function", imageName: "InverseSineFunctionButtonIcon", latexCode: "\\sin^{-1}{} ")
        sections[1].addItem(withName: "Inverse Cosine Function", imageName: "InverseCosineFunctionButtonIcon", latexCode: "\\cos^{-1}{} ")
        sections[1].addItem(withName: "Inverse Tangent Function", imageName: "InverseTangentFunctionButtonIcon", latexCode: "\\tan^{-1}{} ")
        sections[1].addItem(withName: "Inverse Cotangent Function", imageName: "InverseCotangentFunctionButtonIcon", latexCode: "\\cot^{-1}{} ")
        sections[1].addItem(withName: "Inverse Secant Function", imageName: "InverseSecantFunctionButtonIcon", latexCode: "\\sec^{-1}{} ")
        sections[1].addItem(withName: "Inverse Cosecant Function", imageName: "InverseCosecantFunctionButtonIcon", latexCode: "\\csc^{-1}{} ")
        sections[1].addItem(withName: "Arcsine Function", imageName: "ArcsineFunctionButtonIcon", latexCode: "\\arcsin{} ")
        sections[1].addItem(withName: "Arccosine Function", imageName: "ArccosineFunctionButtonIcon", latexCode: "\\arccos{} ")
        sections[1].addItem(withName: "Arctangent Function", imageName: "ArctangentFunctionButtonIcon", latexCode: "\\arctan{} ")

        addSection(withName: "Hyperbolic Trigonometric Functions")
        sections[2].addItem(withName: "Hyperbolic Sine Function", imageName: "HyperbolicSineFunctionButtonIcon", latexCode: "\\sinh{} ")
        sections[2].addItem(withName: "Hyperbolic Cosine Function", imageName: "HyperbolicCosineFunctionButtonIcon", latexCode: "\\cosh{} ")
        sections[2].addItem(withName: "Hyperbolic Tangent Function", imageName: "HyperbolicTangentFunctionButtonIcon", latexCode: "\\tanh{} ")
        sections[2].addItem(withName: "Hyperbolic Cotangent Function", imageName: "HyperbolicCotangentFunctionButtonIcon", latexCode: "\\coth{} ")
    }
}
