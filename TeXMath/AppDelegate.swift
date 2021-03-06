//
//  AppDelegate.swift
//  TeXMath
//
//  Created by Jiaxin Shou on 2019/11/13.
//  Copyright © 2019 Jiaxin Shou. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_: Notification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_: Notification) {
        // Insert code here to tear down your application
    }

    func applicationShouldTerminateAfterLastWindowClosed(_: NSApplication) -> Bool {
        return true
    }

    @IBAction func latexMathematicsHelpMenuItemClicked(_: Any) {
        NSWorkspace.shared.open(URL(string: "https://en.wikibooks.org/wiki/LaTeX/Mathematics")!)
    }
}
