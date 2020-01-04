//
//  EquationItemInfo.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/1/4.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Foundation

class EquationItemInfo {
    var name: String = ""
    var imageName: String = ""
    var latexCode: String = ""

    init(withName name: String, imageName: String, latexCode: String) {
        self.name = name
        self.imageName = imageName
        self.latexCode = latexCode
    }
}
