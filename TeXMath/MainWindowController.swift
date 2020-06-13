//
//  MainWindowController.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/12/2.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    @IBOutlet var scrubber: NSScrubber!

    private weak var tabViewController: EquationItemTabViewController!
    private weak var editorViewController: EditorViewController!

    override func windowDidLoad() {
        super.windowDidLoad()

        let windowWidth: CGFloat = 940
        let windowHeight: CGFloat = 640
        if let screenFrame = window?.screen?.frame {
            window?.setFrame(NSRect(x: (screenFrame.width - windowWidth) / 2, y: (screenFrame.height - windowHeight) / 2, width: windowWidth, height: windowHeight), display: true)
        }

        tabViewController = contentViewController?.children[0] as? EquationItemTabViewController
        editorViewController = contentViewController?.children[1] as? EditorViewController

        scrubber.isContinuous = true
        scrubber.selectionOverlayStyle = .outlineOverlay
        scrubber.selectedIndex = tabViewController.selectedTabViewItemIndex
    }

    @IBAction func clearButtonTouched(_ sender: Any) {
        editorViewController.codeTextView.selectAll(sender)
        editorViewController.codeTextView.insertText("", replacementRange: editorViewController.codeTextView.selectedRange())
    }

    @IBAction func reloadButtonTouched(_: Any) {
        editorViewController.previewView.reload()
    }
}

// MARK: NSScrubberDataSource

extension MainWindowController: NSScrubberDataSource {
    func numberOfItems(for _: NSScrubber) -> Int {
        return tabViewController.tabViewItems.count
    }

    func scrubber(_: NSScrubber, viewForItemAt index: Int) -> NSScrubberItemView {
        let view = NSScrubberImageItemView()

        if let imageName = tabViewController.tabViewItems[index].image?.name(), let image = NSImage(named: imageName)?.copy() as? NSImage {
            view.imageView.imageScaling = .scaleNone

            image.size = NSSize(width: 18, height: 18)
            image.tint(withColor: NSColor.white)

            view.image = image
        }

        return view
    }
}

// MARK: NSScrubberDelegate

extension MainWindowController: NSScrubberDelegate {
    func scrubber(_: NSScrubber, didSelectItemAt index: Int) {
        tabViewController.selectedTabViewItemIndex = index
    }
}
