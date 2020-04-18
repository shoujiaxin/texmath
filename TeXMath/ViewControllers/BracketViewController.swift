//
//  BracketViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class BracketViewController: ViewControllerBase {
    override func viewDidLoad() {
        super.viewDidLoad()

        addSection(withName: "Brackets")
        sections[0].addItem(withName: "Parentheses", imageName: "ParenthesesButtonIcon", latexCode: "\\left( {} \\right) ")
        sections[0].addItem(withName: "Square Brackets", imageName: "SquareBracketsButtonIcon", latexCode: "\\left[ {} \\right] ")
        sections[0].addItem(withName: "Curly Braces", imageName: "CurlyBracesButtonIcon", latexCode: "\\left\\{ {} \\right\\} ")
        sections[0].addItem(withName: "Angle Brackets", imageName: "AngleBracketsButtonIcon", latexCode: "\\left< {} \\right> ")
        sections[0].addItem(withName: "Floor Brackets", imageName: "FloorBracketsButtonIcon", latexCode: "\\left\\lfloor {} \\right\\rfloor ")
        sections[0].addItem(withName: "Ceiling Brackets", imageName: "CeilingBracketsButtonIcon", latexCode: "\\left\\lceil {} \\right\\rceil ")
        sections[0].addItem(withName: "Vertical Bars", imageName: "VerticalBarsButtonIcon", latexCode: "\\left| {} \\right| ")
        sections[0].addItem(withName: "Double Vertical Bars", imageName: "DoubleVerticalBarsButtonIcon", latexCode: "\\left\\| {} \\right\\| ")

        addSection(withName: "Brackets with Separators")
        sections[1].addItem(withName: "Parentheses with Separator", imageName: "ParenthesesWithSeparatorButtonIcon", latexCode: "\\left( {} | {} \\right) ")
        sections[1].addItem(withName: "Square Brackets with Separator", imageName: "SquareBracketsWithSeparatorButtonIcon", latexCode: "\\left[ {} | {} \\right] ")
        sections[1].addItem(withName: "Curly Braces with Separator", imageName: "CurlyBracesWithSeparatorButtonIcon", latexCode: "\\left\\{ {} | {} \\right\\} ")
        sections[1].addItem(withName: "Angle Brackets with Separator", imageName: "AngleBracketsWithSeparatorButtonIcon", latexCode: "\\left< {} | {} \\right> ")
        sections[1].addItem(withName: "Angle Brackets with Two Separators", imageName: "AngleBracketsWithTwoSeparatorsButtonIcon", latexCode: "\\left< {} | {} | {} \\right> ")

        addSection(withName: "Single Bracket")
        sections[2].addItem(withName: "Left Parenthesis", imageName: "LeftParenthesisButtonIcon", latexCode: "\\left( {} \\right. ")
        sections[2].addItem(withName: "Right Parenthesis", imageName: "RightParenthesisButtonIcon", latexCode: "\\left. {} \\right) ")
        sections[2].addItem(withName: "Left Square Brackets", imageName: "LeftSquareBracketsButtonIcon", latexCode: "\\left[ {} \\right. ")
        sections[2].addItem(withName: "Right Square Brackets", imageName: "RightSquareBracketsButtonIcon", latexCode: "\\left. {} \\right] ")
        sections[2].addItem(withName: "Left Curly Braces", imageName: "LeftCurlyBracesButtonIcon", latexCode: "\\left\\{ {} \\right. ")
        sections[2].addItem(withName: "Right Curly Braces", imageName: "RightCurlyBracesButtonIcon", latexCode: "\\left. {} \\right\\} ")
        sections[2].addItem(withName: "Left Angle Brackets", imageName: "LeftAngleBracketsButtonIcon", latexCode: "\\left< {} \\right. ")
        sections[2].addItem(withName: "Right Angle Brackets", imageName: "RightAngleBracketsButtonIcon", latexCode: "\\left. {} \\right> ")
        sections[2].addItem(withName: "Left Floor Brackets", imageName: "LeftFloorBracketsButtonIcon", latexCode: "\\left\\lfloor {} \\right. ")
        sections[2].addItem(withName: "Right Floor Brackets", imageName: "RightFloorBracketsButtonIcon", latexCode: "\\left. {} \\right\\rfloor ")
        sections[2].addItem(withName: "Left Ceiling Brackets", imageName: "LeftCeilingBracketsButtonIcon", latexCode: "\\left\\lceil {} \\right. ")
        sections[2].addItem(withName: "Right Ceiling Brackets", imageName: "RightCeilingBracketsButtonIcon", latexCode: "\\left. {} \\right\\rceil ")
        sections[2].addItem(withName: "Left Vertical Bars", imageName: "LeftVerticalBarsButtonIcon", latexCode: "\\left| {} \\right. ")
        sections[2].addItem(withName: "Right Vertical Bars", imageName: "RightVerticalBarsButtonIcon", latexCode: "\\left. {} \\right| ")
        sections[2].addItem(withName: "Left Double Vertical Bars", imageName: "LeftDoubleVerticalBarsButtonIcon", latexCode: "\\left\\| {} \\right. ")
        sections[2].addItem(withName: "Right Double Vertical Bars", imageName: "RightDoubleVerticalBarsButtonIcon", latexCode: "\\left. {} \\right\\| ")
        sections[2].addItem(withName: "Cases", imageName: "CasesButtonIcon", latexCode: "\\begin{cases} {} \\\\ {} \\end{cases} ")
    }
}
