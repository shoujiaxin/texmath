//
//  EquationItem.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/1/4.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Foundation

class EquationItem {
    var name: String?
    var imageName: String?
    var latexCode: String?
}

class EquationItemSection {
    var name: String?
    var items: [EquationItem] = []

    public func addItem(withName name: String, imageName: String, latexCode: String) {
        let item = EquationItem()
        item.name = name
        item.imageName = imageName
        item.latexCode = latexCode

        items.append(item)
    }
}
