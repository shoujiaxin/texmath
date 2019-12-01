//
//  BracketViewController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/1.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class BracketViewController: NSViewController {
    @IBOutlet var scrollView: NSScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let documentView = scrollView.documentView {
            documentView.scroll(NSPoint(x: 0, y: documentView.bounds.size.height))
        }
    }

    @IBAction func parenthesesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left( {} \\right) ")
    }

    @IBAction func squareBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left[ {} \\right] ")
    }

    @IBAction func curlyBracesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\{ {} \\right\\} ")
    }

    @IBAction func angleBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left< {} \\right> ")
    }

    @IBAction func floorBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\lfloor {} \\right\\rfloor ")
    }

    @IBAction func ceilingBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\lceil {} \\right\\rceil ")
    }

    @IBAction func verticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left| {} \\right| ")
    }

    @IBAction func doubleVerticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\| {} \\right\\| ")
    }

    @IBAction func parenthesesWithSeparatorButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left( {} | {} \\right) ")
    }

    @IBAction func squareBracketsWithSeparatorButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left[ {} | {} \\right] ")
    }

    @IBAction func curlyBracesWithSeparatorButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\{ {} | {} \\right\\} ")
    }

    @IBAction func angleBracketsWithSeparatorButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left< {} | {} \\right> ")
    }

    @IBAction func angleBracketsWithTwoSeparatorsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left< {} | {} | {} \\right> ")
    }

    @IBAction func leftParenthesesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left( {} \\right. ")
    }

    @IBAction func rightParenthesesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right) ")
    }

    @IBAction func leftSquareBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left[ {} \\right. ")
    }

    @IBAction func rightSquareBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right] ")
    }

    @IBAction func leftCurlyBracesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\{ {} \\right. ")
    }

    @IBAction func rightCurlyBracesButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right\\} ")
    }

    @IBAction func leftAngleBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left< {} \\right. ")
    }

    @IBAction func rightAngleBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right> ")
    }

    @IBAction func leftFloorBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\lfloor {} \\right. ")
    }

    @IBAction func rightFloorBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right\\rfloor ")
    }

    @IBAction func leftCeilingBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\lceil {} \\right. ")
    }

    @IBAction func rightCeilingBracketsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right\\rceil ")
    }

    @IBAction func leftVerticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left| {} \\right. ")
    }

    @IBAction func rightVerticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right| ")
    }

    @IBAction func leftDoubleVerticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left\\| {} \\right. ")
    }

    @IBAction func rightDoubleVerticalBarsButtonClicked(_: Any) {
        Utils.insertLatex(latexCode: "\\left. {} \\right\\| ")
    }
}
