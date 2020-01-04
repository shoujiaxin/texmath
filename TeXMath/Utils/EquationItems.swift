//
//  EquationItems.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2020/1/4.
//  Copyright © 2020 Jiaxin Shou. All rights reserved.
//

import Foundation

class EquationItems {
    class Section {
        var name: String?
        var items: [(name: String, imageName: String, latexCode: String)] = []

        init(withName name: String) {
            self.name = name
        }

        func addItem(withName name: String, imageName: String, latexCode: String) {
            items.append((name, imageName, latexCode))
        }
    }

    var sections: [Section] = []
    var numberOfSections: Int {
        return sections.count
    }

    func addSection(withName name: String) {
        sections.append(Section(withName: name))
    }

    func numberOfItems(in section: Int) -> Int {
        return sections[section].items.count
    }

    func item(in section: Int, at index: Int) -> (name: String, imageName: String, latexCode: String) {
        return sections[section].items[index]
    }
}
